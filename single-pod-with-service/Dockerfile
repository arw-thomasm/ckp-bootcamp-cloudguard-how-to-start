FROM nginx:alpine

COPY data/html /usr/src/app
COPY config/nginx/app.conf /etc/nginx/conf.d/default.conf

RUN chown -R root:root /etc/nginx && \
    chown -R root:root /var/cache/nginx && \
    find /etc/nginx -type d -exec chmod 770 {} \; && \
    find /etc/nginx -type f -exec chmod 660 {} \; && \
    find /var/cache/nginx -type d -exec chmod 770 {} \; && \
    find /var/cache/nginx -type f -exec chmod 660 {} \;

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
