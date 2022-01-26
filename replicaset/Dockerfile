FROM nginx:alpine

COPY data/html /usr/src/app
COPY config/nginx/app.conf /etc/nginx/conf.d/default.conf
COPY config/nginx/nginx.conf /etc/nginx//nginx.conf

RUN chown -R root:root /etc/nginx && \
    chown -R root:root /var/cache/nginx && \
    find /etc/nginx -type d -exec chmod 777 {} \; && \
    find /etc/nginx -type f -exec chmod 666 {} \; && \
    find /var/cache/nginx -type d -exec chmod 777 {} \; && \
    find /var/cache/nginx -type f -exec chmod 666 {} \; && \
    find /run -type d -exec chmod 777 {} \; && \
    find /run -type f -exec chmod 666 {} \;

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
