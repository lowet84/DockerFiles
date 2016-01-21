FROM timhaak/plex

RUN sudo apt-get update
RUN sudo apt-get install libfuse2
RUN sudo apt-get install p7zip-full

RUN mkdir /rar2fs_install
RUN mkdir /data_rar2fs

COPY rar2fs/*  /rar2fs_install/
COPY libunrar.so /usr/lib/

RUN sed -i "2i /rar2fs_install/rar2fs -o allow_other /data /data_rar2fs --seek-length=1" start.sh
