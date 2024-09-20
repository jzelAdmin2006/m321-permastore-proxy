#!/bin/bash
envsubst '${PORT},${PROXY_PASS},${PROXY_HOST}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
nginx -g 'daemon off;'
