#!/bin/sh

if [ -n "$API_URL" ]; then
  echo "Replacing default API URL with $API_URL"
  sed -i "s|http://basic3tier-api:5000/|$API_URL|g" /usr/share/nginx/html/configs/config.json
fi

exec "$@"
