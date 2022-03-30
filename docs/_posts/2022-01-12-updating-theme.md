---
title:  "Updating to a later version of our theme"
date:   2022-01-12 00:00:00 -0500
excerpt: ""
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

This blog setup uses the [minimal mistakes theme](https://github.com/mmistakes/minimal-mistakes).

In the `docs/_config.yml` file, you'll see the line `remote_theme: "mmistakes/minimal-mistakes@4.24.0"` (at the time of this writing). This means we're using release `v4.24.0` of the theme.

From time to time, the theme may be updated and you'll see the update on [its releases page](https://github.com/mmistakes/minimal-mistakes/releases). If you want to be notified of updates, you can [go to the theme repository home page](https://github.com/mmistakes/minimal-mistakes), select `Watch --> Custom --> Releases`, which will subscribe you to release notifications.

If you want to update to a release, we recommend you:

* Read the release notes, which will contain information on breaking changes, upgrade steps, etc.
* Note the version number on the release tag
* Update the `_config.yml` to update the version in the `remote_theme` variable.
