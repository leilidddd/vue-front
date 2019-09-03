FROM nginx
LABEL name="vue-front"
LABEL version="1.0"
COPY ./dist /usr/share/niginx/html
COPY ./vue-front.conf /etc/niginx/conf.d
EXPOSE 80
