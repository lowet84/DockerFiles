FROM timhaak/plex

RUN sudo apt-get update && sudo apt-get install libfuse2 && sed -i "2i /rar2fs_install/rar2fs -o allow_other /data /data_rar2fs --seek-length=1" start.sh && sudo apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /rar2fs_install && mkdir /data_rar2fs

COPY rar2fs/*  /rar2fs_install/
COPY libunrar.so /usr/lib/
