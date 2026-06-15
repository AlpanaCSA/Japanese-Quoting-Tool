FROM nginx:alpine
RUN apk add --no-cache apache2-utils
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN htpasswd -bc /etc/nginx/.htpasswd csa hazlocquoter
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
