FROM nginx:alpine

RUN apk add --no-cache bash

WORKDIR /usr/share/nginx/html

# Copy the website content
COPY . .

# Copy the custom Nginx config into the container
COPY custom-nginx.conf /etc/nginx/conf.d/

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
