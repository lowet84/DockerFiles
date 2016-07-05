FROM            phusion/baseimage
MAINTAINER      Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN        apt-get update

# Install nginx
RUN        apt-get install -y -q nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

CMD ["nginx"]

# Add in the config
ADD default /etc/nginx/sites-available/default
