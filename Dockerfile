FROM nginx:latest

RUN apt update && apt install -y gettext-base

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY start-nginx.sh /start-nginx.sh

RUN chmod +x /start-nginx.sh

CMD ["/start-nginx.sh"]
