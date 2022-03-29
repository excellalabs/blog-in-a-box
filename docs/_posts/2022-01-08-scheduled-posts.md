---
title:  "Setting up Scheduled Posts"
date:   2022-01-07 00:00:00 -0500
categories: jekyll update
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

By default, this blog has a GitHub Action that will run to publish every hour. That way, you can create a post for the future, and when the build runs and that post is no longer in the future, it will be published.

You'll need to take one of two actions. If you don't want scheduled posts, delete `scheduled-posts.yml` from the `.github` directory.

If you do want scheduled posts:

* You'll need to generate a token called `PAGES_ACCESS_TOKEN` and save it, [as described here](https://seankilleen.com/2020/02/how-to-deploy-github-pages-on-a-schedule-to-publish-future-posts/). The general summary is:
  * Go to [your GitHub tokens settings](https://github.com/settings/tokens)
  * Click the button to create a new token, and give it a name like "Scheduled Posts" or similar.
  * For the permissions, specify `public_repo`.
  * Copy the Access token for use in the next step.
* Add the secret for GitHub actions
  * Go into the settings of your GitHub repository.
  * Select `Secrets --> Actions` from the left-hand menu.
  * Click the `New Repository Secret` button
  * Name the secret `PAGES_ACCESS_TOKEN` and paste the value in.
* Update the repository value in the `scheduled-posts.yml` file -- instead of `excellalabs/blog-in-a-box`, use your username and repository name.
