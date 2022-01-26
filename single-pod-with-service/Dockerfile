FROM nginx:alpine

COPY html /usr/src/app
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/nginx/app.conf /etc/nginx/conf.d/

RUN chown -R root:root /etc/nginx && \
    chown -R root:root /var/cache/nginx && \
    find /etc/nginx -type d -exec chmod 770 {} \; && \
    find /etc/nginx -type f -exec chmod 660 {} \; && \
    find /var/cache/nginx -type d -exec chmod 770 {} \; && \
    find /var/cache/nginx -type f -exec chmod 660 {} \;

EXPOSE 8080


