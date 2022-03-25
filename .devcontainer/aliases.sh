#!/bin/sh
# We get the first workspace, because there should only be one
# This is so that when someone updates their devcontainer name, it doesn't get screwed up
first_workspace="$(cd /workspaces && ls | head -1)"
alias gotoworkspace="cd /workspaces/$first_workspace/src"
alias localdev="gotoworkspace && bundle install && bundle exec jekyll serve --future"
alias serve="gotoworkspace && bundle exec jekyll serve --future"
alias spellcheck="gotoworkspace && cspell --config /workspaces/$first_workspace/cSpell.json /workspaces/$first_workspace/src/**/*.md"