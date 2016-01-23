FROM tuxeh/sonarr:develop
USER root

#RUN echo 'APT::Default-Release "stable";' | tee -a /etc/apt/apt.conf
RUN echo 'deb http://ftp.debian.org/debian sid main' | tee -a /etc/apt/sources.list
RUN apt-get update && apt-get -t sid install -y libc6-dev libc6-dbg fuse-utils

RUN mkdir /rar2fs_install && mkdir /data_rar2fs
RUN chown nobody:users /data_rar2fs
RUN sed -i "2i /rar2fs_install/rar2fs /volumes/media /data_rar2fs --seek-length=1" /start.sh
RUN apt-get install -y libfuse2 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY rar2fs/*  /rar2fs_install/
COPY libunrar.so /usr/lib/

ADD reset.sh / 
RUN chmod +x /reset.sh

COPY sonarr/ /opt/NzbDrone/
RUN rm /opt/NzbDrone/NzbDrone.exe && mv /opt/NzbDrone/NzbDrone.Console.exe /opt/NzbDrone/NzbDrone.exe
RUN mkdir /original_config && cp -r /volumes/config/* /original_config && chown nobody:users /original_config
USER nobody
