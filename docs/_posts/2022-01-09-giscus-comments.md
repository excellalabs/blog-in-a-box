---
title:  "Setting up comments using Giscus"
date:   2022-01-09 00:00:00 -0500
excerpt: ""
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

###

The "minimal mistakes" theme that this ships with allows for a number of different comment set ups. But out of the box, we wanted to enable a quick path comments for your sites.

[Giscus](https://giscus.app/) allows you to use the GitHub Discussions feature, which comes built into GitHub for your repository, to host comments on your blog. To set up Giscus comments:

* Enable discussions for your repository. If you don't see the "Discussions" tab, you can go to the settings for your repository, and under the `Features` section, check the `Discussions` box.
* On the discussions tab, click the pencil icon next to Categories, and create a new category called "Blog Comments" or similar. Make sure you set the discussion format to `Announcement`, because you only want the Giscus app (which we'll set up shortly) to be the one managing comments.
* Navigate to the [Giscus app](https://giscus.app/) and follow the instructions to set it up.
  * As part of the instructions, you'll have to add the Giscus app to your repository. This will show a warning, but is perfectly fine for use and you can feel comfortable accepting it.
  * For the repository name, you'll use your username and the repository name, e.g. `excellalabs/blog-in-a-box` for this one.
  * You'll copy the ID, category ID, etc. from the Giscus app -- rather than copying the `<script>` tag that it supplies, you'll copy the informational bits into the `giscus` configuration in your `docs/_config.yml` file.
