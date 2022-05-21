# Adapted from https://github.com/madduci/docker-github-pages/blob/master/Dockerfile
# Adapted from https://github.com/AyushyaChitransh/Nodejs_and_ruby_alpine/blob/master/dockerfile

# Using dependency references from https://pages.github.com/versions/

# 2.7.3 is GitHub Pages 226 compatible
FROM ruby:2.7.3-alpine  

LABEL maintainer="Sean Killeen <SeanKilleen@gmail.com>"

VOLUME /docs

WORKDIR /docs

ENV GH_PAGES_VERSION=226

# Node
ENV NODE_VERSION=v16.15.0 NPM_VERSION=latest YARN_VERSION=latest

######################################################
#             Installling Base Stuff                 #
######################################################

RUN apk update && \
    apk --update add \
    git \
    gcc \
    g++ \
    make \
    curl \
    bison \
    ca-certificates \
    tzdata \
    glib-dev \
    zlib-dev \
    ruby-rdoc \
    ruby-irb \
    ruby-bundler \
    ruby-nokogiri \
    ruby-dev \
    libc-dev && \
    # echo 'gem: --no-document' > /etc/gemrc && \
    gem install bundler && \
    gem install github-pages --version ${GH_PAGES_VERSION} && \
    gem install jekyll-watch && \
    gem install jekyll-admin 


#################################################################
#                  Installing node                              #
#################################################################

RUN apk add nodejs=16.15.0-r1

RUN apk add dos2unix
RUN npm install -g cspell markdownlint-cli

ENV ENV=/etc/profile

COPY aliases.sh /etc/profile.d/alias.sh

# Coverts CRLF based files (such as those on windows devices) to LF line endings for container
RUN dos2unix /etc/profile.d/alias.sh

EXPOSE 4000
