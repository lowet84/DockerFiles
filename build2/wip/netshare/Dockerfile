FROM phusion/baseimage

RUN mkdir /netshare
COPY docker-volume-netshare /netshare/docker-volume-netshare
COPY start.sh /netshare/start.sh
COPY netshare.sh /netshare/netshare.sh
WORKDIR /netshare

VOLUME ["/key"]

CMD sh start.sh
