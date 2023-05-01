---
layout: post
title:  "Identifying Web App Technologies Using Wappalyzer"
tags:
- penetration testing
---

Wappalyzer is a browser extension for identifying technologies that are used by web apps. It is available for various browser platforms from [here](https://www.wappalyzer.com/apps/){:target="_blank"}{:rel="noopener noreferrer"}. For this demonstration, I will be running Wappalyzer by using the Firefox extension.

With Wappalyzer installed, open a web app in the browser. Next, click the Wappalyzer icon below:

![Wappalyzer technologies](/assets/images/wappalyzer_technologies.png)

Wappalyzer displays the identified technologies. To obtain information about a specific technology, select its name from the Wappalyzer results. For example, after selecting "PWA" in the above figure, a new page opens with information about this technology:

![Wappalyzer technology information](/assets/images/wappalyzer_tech_info.png)

From a pentesting perspective, the Wappalyzer results are useful for giving you a quick overview of the web app's technologies, which can be used to inform testing. This ensures that the tests performed against the web app are customised based on the identified technologies.