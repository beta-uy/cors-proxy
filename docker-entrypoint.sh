#!/bin/sh
set -e

envsubst '$TARGET $ORIGIN' </etc/nginx/conf.d/default.conf.template >/etc/nginx/conf.d/default.conf
cat /etc/nginx/conf.d/default.conf

exec "$@"

