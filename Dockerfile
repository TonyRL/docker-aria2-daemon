FROM lsiobase/alpine:3.11

MAINTAINER tonyrl

RUN \
 apk add --no-cache --upgrade \
 		aria2 \
		bash \
		ca-certificates \
		ruby \
		ruby-bundler \
		ruby-xmlrpc \
		ruby-dev && \
 rm -fr /usr/share/ri

ADD root/ /

RUN chmod -v +x /etc/services.d/*/run /etc/cont-init.d/*

VOLUME ["/download"]
VOLUME ["/conf"]
EXPOSE 6800
