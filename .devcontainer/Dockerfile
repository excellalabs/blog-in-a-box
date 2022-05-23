# Adapted from https://github.com/madduci/docker-github-pages/blob/master/Dockerfile
# Adapted from https://github.com/AyushyaChitransh/Nodejs_and_ruby_alpine/blob/master/dockerfile

# Using dependency references from https://pages.github.com/versions/

# 2.7.3 is GitHub Pages 226 compatible
FROM ruby:2.7.3-slim-buster

LABEL maintainer="Sean Killeen <SeanKilleen@gmail.com>"

VOLUME /docs

WORKDIR /docs

ENV GH_PAGES_VERSION=226

# Node
ENV NODE_VERSION=v16.15.0 NPM_VERSION=latest YARN_VERSION=latest

######################################################
#             Installling Base Stuff                 #
######################################################

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install \
    git \
    gcc \
    g++ \
    make \
    curl \
    bison \
    ca-certificates \
    tzdata \
    ruby-dev \
    ruby-nokogiri \
    libc-dev
    
RUN gem install bundler && \
    gem install github-pages --version ${GH_PAGES_VERSION} && \
    gem install jekyll-watch && \
    gem install jekyll-admin 

#################################################################
#                  Installing node                              #
#################################################################

# TODO: Extract nodejs package version into env variable up top
#RUN apk -UvX http://dl-4.alpinelinux.org/alpine/edge/main add -u nodejs=16.15.0-r1 npm

RUN apt-get -y install dos2unix

#RUN node -v
#RUN npm -v
#RUN npm install -g cspell markdownlint-cli

ENV ENV=/etc/profile

COPY aliases.sh /etc/profile.d/alias.sh

# Coverts CRLF based files (such as those on windows devices) to LF line endings for container
RUN dos2unix /etc/profile.d/alias.sh

EXPOSE 4000
