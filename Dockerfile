FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --chmod=644 index.html /usr/share/nginx/html/index.html
EXPOSE 8080
