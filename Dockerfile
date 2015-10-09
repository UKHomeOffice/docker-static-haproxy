FROM alpine:latest
MAINTAINER Rohith <gambol99@gmail.com>

RUN apk --update add haproxy ruby
ADD config/haconfig /haconfig
ADD config/haproxy.conf.erb /etc/haproxy/haproxy.conf.erb
ADD config/run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
