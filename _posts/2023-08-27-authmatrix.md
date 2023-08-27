---
layout: post
title:  "Using AuthMatrix to Find Access Control Issues"
tags:
- access control
- penetration testing
---

When testing a web app, an important area to focus on is access control. This can be tested using [AuthMatrix](https://portswigger.net/bappstore/30d8ee9f40c041b0bfec67441aad158e){:target="_blank"}{:rel="noopener noreferrer"}, which is useful for testing multiple roles. This post will demonstrate how to use AuthMatrix to test for an access control issue using the [Damn Vulnerable Web Application (DVWA)](https://github.com/digininja/DVWA){:target="_blank"}. The following users will be used: gordonb (low-privileged user), admin and anonymous. The anonymous user will be used for testing unauthenticated access.

## Setting Up AuthMatrix

Below are the steps to set up AuthMatrix:

- **Add users**: the gordonb, admin and anonymous users are added by selecting "New User".
- **Add roles**: the user and admin roles are added by selecting "New Role".
- **Tick roles corresponding to users**: the user and admin roles are ticked corresponding to the gordonb and admin users.
- **Add cookies**: cookies can be added to AuthMatrix from the Burp proxy history by right-clicking the requests of each user, selecting "Extensions" and then sending the cookies to AuthMatrix. For the anonymous user, an empty session cookie parameter needs to be added, which in this case is "PHPSESSID=".
- **Send requests to AuthMatrix**: after identifying the pages to be tested, right-click the requests in the Burp proxy history, select Extensions then send them to AuthMatrix.
- **Tick roles corresponding to requests**: for each request, the roles that are only supposed to have access to that page are ticked. For example, the "Authorisation Bypass" page in DVWA should only be accessed by admins so the admin role is ticked for that request.

Below is an illustration of AuthMatrix once the above steps have been followed:

![AuthMatrix setup](/assets/images/authmatrix_setup.png)

## Running AuthMatrix

Once AuthMatrix has been set up, the next step is to run it. AuthMatrix will show the results in a graphical format. Here, red and green colours are displayed:

![Running AuthMatrix](/assets/images/running_authmatrix.png)

Red indicates that there may be a vulnerability while green means that there is no vulnerability.

Let's inspect the "/authbypass/" request for gordonb to verify the vulnerability. Viewing the response indicates the 200 HTTP status code:

![gordonb HTTP response](/assets/images/authmatrix_response.png)

By selecting "Render", this verifies that this is the Authorisation Bypass page which gordonb can access:

![gordonb HTTP response rendered](/assets/images/authmatrix_render.png)

By following the above process, AuthMatrix was used to identify that a low-privileged user could access a page that should have only been accessible to admins.