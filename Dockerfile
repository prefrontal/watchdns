FROM alpine
RUN apk update && apk add drill && apk add bash
COPY ./watchdns /usr/local/bin/watchdns
ENV HOME /run
ENTRYPOINT ["watchdns"]
