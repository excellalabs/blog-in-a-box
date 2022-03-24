# We get the first workspace, because there should only be one
# This is so that when someone updates their devcontainer name, it doesn't get screwed up
first_workspace=$(cd /workspaces && ls | head -1)

alias localdev=cd $first_workspace/src bundle install && bundle exec jekyll serve --future