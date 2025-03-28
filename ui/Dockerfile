FROM nginx:alpine
 
RUN apk add --no-cache bash
 
WORKDIR /usr/share/nginx/html
 
COPY . .
 
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
 
EXPOSE 80
 
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]