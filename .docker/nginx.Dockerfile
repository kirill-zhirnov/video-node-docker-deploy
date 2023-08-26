FROM nginx:1.23-alpine

COPY ./.docker/nginx/site.conf /etc/nginx/conf.d/default.conf

ARG DOCKER_NGINX_NODE_HOST
RUN sed -ri -e "s!DOCKER_NGINX_NODE_HOST!${DOCKER_NGINX_NODE_HOST}!g" /etc/nginx/conf.d/default.conf

