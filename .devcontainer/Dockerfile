FROM jekyll/jekyll:4

ENV ENV=/etc/profile

COPY aliases.sh /etc/profile.d/alias.sh

COPY package.json /workspace/blog-in-a-box_tools
RUN cd /workspace/blog-in-a-box_tools && npm install
