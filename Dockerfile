# FROM node:10-jessie
# FROM lakoo/node-gcloud-docker

FROM node:10
# MAINTAINER William Chong <williamchong@lakoo.com>

# ENV DOCKER_BUCKET get.docker.com
# ENV DOCKER_VERSION 17.03.0-ce
# ENV DOCKER_SHA256 4a9766d99c6818b2d54dc302db3c9f7b352ad0a80a2dc179ec164a3ba29c2d3e

# RUN apk add --no-cache curl openssl \
# 	&& set -x \
# 	&& curl -fSL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" -o docker.tgz \
# 	&& echo "${DOCKER_SHA256} *docker.tgz" | sha256sum -c - \
# 	&& tar -xzvf docker.tgz \
# 	&& mv docker/* /usr/local/bin/ \
# 	&& rmdir docker \
# 	&& rm docker.tgz \
# 	&& docker -v \
# 	&& apk del curl openssl

WORKDIR /app

ADD package.json package.json
ADD sample.test.js sample.test.js
ADD wdio.conf.js wdio.conf.js

RUN npm install
# RUN npm install -g chromedriver

# RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
# RUN unzip chromedriver_linux64.zip

# RUN mv chromedriver /usr/bin/chromedriver
# RUN chown root:root /usr/bin/chromedriver
# RUN chmod +x /usr/bin/chromedriver

# RUN apt-get install -y 
# ENV PATH /usr/bin:$PATH
# ENV PATH /app/node_modules/chromedriver:$PATH

RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
RUN echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get -y update
RUN apt-get -y install google-chrome-stable
# RUN apt-get -y install libnss3 libgconf-2-4 libxi6 xvfb 