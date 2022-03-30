---
title:  "Protecting Your Branch to ensure build steps run"
date:   2022-01-07 00:00:00 -0500
excerpt: ""
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

We don't want to merge something that could break things for us, so we want to "protect" our `main` branch and ensure that the GitHub Actions pass before something can be merged.

* Go to your repository's settings
* On the left-hand navigation, click `Branches`.
* Under the `Branch protection rules` section, click `Add rule`.
* For `branch name pattern`, specify `main`, which is the default branch for the project.
* If you'd like, check off `Require a pull request before merging`. This means that you can't just push changes to the main branch. A PR helps organize things and ensure that all checks complete.
* Check the box for `Require status checks to pass before merging`. Search for `spellchecking`, `Markdown linting`, and `build` and click on them to add them.
* Modify any other settings that might be of interest to you.
* Save the settings.

A screenshot of what the settings might look like :

> ![Branch protection settings for the main branch](/assets/images/intro-posts/BranchProtection.png)
