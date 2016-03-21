FROM tomcat
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y cifs-utils && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir -p /update
ADD mount.sh /update/mount.sh
ADD start.sh /update/start.sh

RUN wget https://github.com/popeen/Popeens-Subsonic/releases/download/1.1.Beta1/booksonic.war
RUN mv booksonic.war /usr/local/tomcat/webapps/

CMD sh /update/start.sh
