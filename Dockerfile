FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
RUN rm -f /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-enabled/default
RUN rm -f /var/www/html/index.nginx-debian.html
COPY 33.txt /var/www/html/33.txt
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
