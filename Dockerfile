FROM node:6-slim

MAINTAINER Roman Dodin <dodin.roman@gmail.com>

RUN npm install --global gitbook-cli &&\
	gitbook fetch latest &&\
	npm cache clear &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook

# VOLUME /srv/gitbook /srv/html

# EXPOSE 4000 35729

# CMD /usr/local/bin/gitbook serve
