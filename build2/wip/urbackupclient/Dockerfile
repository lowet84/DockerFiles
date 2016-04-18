############################################################
# Dockerfile to run urbackup-client
# Based on Ubuntu Image
############################################################

FROM phusion/baseimage
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

ENV VERSION 1.4.11

RUN	apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install libcrypto++-dev build-essential wget && \
	cd /root && \
	wget -O - https://hndl.urbackup.org/Client/1.4.11/urbackup-client-1.4.11.tar.gz | tar zxf - && \
	cd urbackup* && \
	./configure --enable-headless --without-mail && \
	make -j 4 && \
	make install && \
	cd /root/ && \
	rm -rf urbackup*

# Ports to expose
EXPOSE 35621
EXPOSE 35622
EXPOSE 35623

VOLUME /data
RUN ls -la /usr/local/sbin
RUN chmod +x /usr/local/sbin/start_urbackup_client
ENTRYPOINT ["/usr/local/sbin/start_urbackup_client"]
CMD ["--no_daemon"]
