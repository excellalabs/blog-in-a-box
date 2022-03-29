---
title:  "Adding a live preview of pull requests using Netlify"
date:   2022-01-10 00:00:00 -0500
categories: jekyll update
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

[Netlify](https://www.netlify.com/) is a phenomenal service for building and hosting web content similar to GitHub Pages (in fact, the capabilities go quite a bit beyond GitHub Pages for many scenarios). For our purposes, Netlify can be very useful to add automated previews so you can see your blog changes before they're live. Netlify allows public blogs and processes to use these services for free, and we're grateful to them for doing so.

You can set up deployments by:

* Creating a free Netlify account
* On your account dashboard, Under `Sites`, click `Add a New Site` and then `Import an existing project`.
* Connect Netlify to your github account and repository on the next page to allow Netlify to "see" your repository.
* Set the base directory as `docs` to correspond to our `docs` folder
* Set the publish directory to `docs/_site`, the default output for our Jekyll build.
* Set the build command to `bundle exec jekyll build --future`. This ensures the build will publish future posts as well, which will be important if you want to preview a future post that you're authoring or scheduling.
* Click "Deploy site". Netlify will do the rest.
