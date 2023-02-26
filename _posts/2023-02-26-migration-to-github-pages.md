---
layout: post
title:  "OnCyberSec Migration to GitHub Pages"
tags:
- wordpress
- jekyll
- github pages
---

I have been busy working on migrating oncybersec.com from WordPress to GitHub Pages, which was recently completed. The increased security and ease of maintenance made this a good move. This involved the following phases: building the site using Jekyll, importing WordPress posts into Jekyll and hosting the site on GitHub Pages.

[Jekyll](https://jekyllrb.com/){:target="_blank"}{:rel="noopener noreferrer"} was used to build a static site. It supports themes with the option to customise it via the front end. It also supports plugins for extending the functionality of a site. No database is used which provides a higher level of security since a Jekyll site is not prone to database threats.

An [official Jekyll importer](https://import.jekyllrb.com/docs/wordpress/){:target="_blank"}{:rel="noopener noreferrer"} is available for importing WordPress posts into Jekyll. I found it to work well as the imported posts only needed minor changes.

[GitHub Pages](https://pages.github.com/){:target="_blank"}{:rel="noopener noreferrer"} supports Jekyll, which simplified the process of hosting this site. Hosting a site is free and it also comes with a github.io domain. GitHub Pages provides the option to configure a site using a custom domain. Overall, the migration went smoothly and I found GitHub Pages to be a good alternative to WordPress.
