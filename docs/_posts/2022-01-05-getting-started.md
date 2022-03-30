---
title:  "Getting Started"
date:   2022-01-05 00:00:00 -0500
excerpt: ""
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

* Delete the `CNAME` file -- that one belongs to us so you'll have a conflict if you try to publish and it's still there. We'll walk through steps to set this up later.
* Update the name within your `devcontainer.json` file to match your blog's name.
* Go through the [Configuration Guide for the Minimal Mistakes theme](https://mmistakes.github.io/minimal-mistakes/docs/configuration/), and update the `docs/_config.yml` file accordingly.
  * We've configured some sensible defaults and added comments where they might be helpful.
* As you go through the posts in the `_posts` directory, feel free to delete them so that they don't ship with your site.
* You may want to replace or delete the `/docs/favicon.ico` file, which is currently the Excella logo.
* You may want to set comments in `docs/_config.yaml` from `giscus` to `false` temporarily, until you follow the docs below to set up Giscus commenting.
* You may want to update the `paginate` setting in `docs/_config.yml` to `5` (default) or something less than the `50` we've set it to for demo purposes.

## How to Subscribe to Updates of This Tool

Occasionally, we might update some things or add some new default functionality that you might find useful.

When we do that, we'll publish [a release](https://github.com/excellalabs/blog-in-a-box/releases).

You can subscribe to those releases so that you'll know when new things are coming. To do that:

* Head to this project's GitHub URL: <https://github.com/excellalabs/blog-in-a-box>
* In the buttons at the top right, click the drop-down for the `Watch` menu, select `Custom`, and then check `Releases`.

Now you'll be notified if we release anything, along with the release notes.
