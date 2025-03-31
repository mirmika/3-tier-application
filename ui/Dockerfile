FROM nginx:alpine

# Install required packages (bash and jq for JSON modification)
RUN apk add --no-cache bash jq

WORKDIR /usr/share/nginx/html

# Copy all UI code and the config folder
COPY . .
COPY config /usr/share/nginx/html/config

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
