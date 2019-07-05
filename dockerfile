FROM ubuntu:16.04
RUN apt update && apt-get install -y nginx
COPY nginx.conf /etc/nginx/
COPY server.conf /etc/nginx/sites-enabled/
RUN echo "hello world" > /var/www/index.html
RUN ln -s /etc/nginx/sites-enabled/server.conf /etc/nginx/sites-available/server.conf
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]