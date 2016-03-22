FROM nginx

RUN apt-get update && apt-get install -y mono-devel && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY index.html /usr/share/nginx/html/index.html 
COPY favicon.ico /usr/share/nginx/html/favicon.ico
COPY favicon.ico /etc/nginx/html/favicon.ico
COPY default.conf /etc/nginx/nginx.conf
ADD start.sh /start.sh
ADD Configurator /var/Configurator

CMD sh /start.sh
