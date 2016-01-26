FROM needo/couchpotato

RUN mkdir /rar2fs_install && mkdir /data_rar2fs

RUN sudo apt-get update 
RUN sudo apt-get install libfuse2 
RUN sed -i "2i /rar2fs_install/rar2fs -o allow_other /movies /data_rar2fs --seek-length=1" /etc/service/couchpotato/run 
RUN sudo apt-get clean 
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY rar2fs/*  /rar2fs_install/
COPY libunrar.so /usr/lib/
