---
title:  "Running commands"
date:   2022-01-06 00:00:00 -0500
categories: jekyll update
excerpt: ""
---

:information_source: Have a challenge with any of this? [Let us know](https://github.com/excellalabs/blog-in-a-box/issues/new) and we'll help!

If you use either the development container or the GitHub Codespaces option, we've added some commands that will hopefully make the development process easier for you.

Below is a list of the commands, how to run them locally and within the dev container, and relevant notes.

| Goal | Within Dev Container | On Local Machine | Notes |
| ---- | -------------------- | ---------------- | ----- |
| Local Development | `localdev` | `bundle install && bundle exec jekyll serve --future` | Publishes future posts, so you can see them. Won't happen in normal publishing. |
| Serve | `serve` | `bundle exec jekyll serve --future` | Without gemfile installations. Note: You may see an error similar to `initialize': Failed to open TCP connection to codeload.github.com:443 (getaddrinfo: Try again) (SocketError)`; if that happens, try the command once or twice more until it succeeds. |
| Spelling | `spellcheck` | The [cSpell commands](https://www.npmjs.com/package/cspell) | |
| Linting | `lint` | The [markdownlint-cli commands](https://github.com/igorshubovych/markdownlint-cli) | |
| Build | `build` | `bundle exec jekyll build` | |
