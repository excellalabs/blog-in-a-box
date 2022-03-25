FROM jekyll/jekyll:4

RUN apk add dos2unix

ENV ENV=/etc/profile

COPY aliases.sh /etc/profile.d/alias.sh
RUN dos2unix /etc/profile.d/alias.sh

COPY package.json /blog-in-a-box_tools/package.json
RUN cd /blog-in-a-box_tools && npm install
