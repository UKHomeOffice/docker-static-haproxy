#!/bin/sh

# step: generate the content
if ./haconfig $@ > /etc/haproxy/haproxy.conf; then
  echo "Jumping to the haproxy service"
  cat /etc/haproxy/haproxy.conf
  exec haproxy -f /etc/haproxy/haproxy.conf
fi

[ -f "/etc/haproxy/haproxy.conf" ] && cat /etc/haproxy/haproxy.conf
