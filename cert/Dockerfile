FROM debian:stretch

RUN apt-get update && apt-get upgrade -y && apt-get install letsencrypt nginx -y
CMD nginx -g 'daemon off ;';
ADD nginx.conf /etc/nginx/sites-enabled/default
EXPOSE 80
