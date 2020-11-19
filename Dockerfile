FROM alpine:lastest

MAINTAINER LuisDoom <lftaddeygmail.com>

RUN apk add asterisk bash

EXPOSE 5038/tcp 8088/tcp 5163/udp

VOLUME /var/lib/asterisk/keys /var/spool/asterisk /var/log/asterisk

CMD["/usr/sbin/asterisk","-vvvdddf","-T","-W","asterisk","-p"]