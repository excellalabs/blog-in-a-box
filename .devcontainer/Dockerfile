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

# For base builds
ENV CONFIG_FLAGS="--fully-static --without-npm" DEL_PKGS="libstdc++" RM_DIRS=/usr/include

RUN apk add --no-cache linux-headers binutils-gold libstdc++ 
RUN curl -sSLO https://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}.tar.xz && \
    curl -sSL https://nodejs.org/dist/${NODE_VERSION}/SHASUMS256.txt.asc | \
    grep " node-${NODE_VERSION}.tar.xz\$" | sha256sum -c | grep . && \
    tar -xf node-${NODE_VERSION}.tar.xz && \
    cd node-${NODE_VERSION} && \
    ./configure --prefix=/usr ${CONFIG_FLAGS} && \
    make -j$(getconf _NPROCESSORS_ONLN) && \
    make install && \
    cd / && \
    if [ -z "$CONFIG_FLAGS" ]; then \
    npm install -g npm@${NPM_VERSION} && \
    find /usr/lib/node_modules/npm -name test -o -name .bin -type d | xargs rm -rf && \
    if [ -n "$YARN_VERSION" ]; then \
    gpg --keyserver ha.pool.sks-keyservers.net --recv-keys \
    6A010C5166006599AA17F08146C2130DFD2497F5 && \
    curl -sSL -O https://yarnpkg.com/${YARN_VERSION}.tar.gz -O https://yarnpkg.com/${YARN_VERSION}.tar.gz.asc && \
    gpg --batch --verify ${YARN_VERSION}.tar.gz.asc ${YARN_VERSION}.tar.gz && \
    mkdir /usr/local/share/yarn && \
    tar -xf ${YARN_VERSION}.tar.gz -C /usr/local/share/yarn --strip 1 && \
    ln -s /usr/local/share/yarn/bin/yarn /usr/local/bin/ && \
    ln -s /usr/local/share/yarn/bin/yarnpkg /usr/local/bin/ && \
    rm ${YARN_VERSION}.tar.gz*; \
    fi; \
    fi && \
    apk del curl make gcc g++ python linux-headers binutils-gold  ${DEL_PKGS} && \
    rm -rf ${RM_DIRS} /node-${NODE_VERSION}* /usr/share/man /tmp/* /var/cache/apk/* \
    /root/.npm /root/.node-gyp /usr/lib/node_modules/npm/man \
    /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html /usr/lib/node_modules/npm/scripts

RUN apk add dos2unix
RUN npm install -g cspell markdownlint-cli

ENV ENV=/etc/profile

COPY aliases.sh /etc/profile.d/alias.sh

# Coverts CRLF based files (such as those on windows devices) to LF line endings for container
RUN dos2unix /etc/profile.d/alias.sh

EXPOSE 4000
