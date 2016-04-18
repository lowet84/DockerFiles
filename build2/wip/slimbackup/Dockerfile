FROM lowet84/rar2fsbase

RUN mkdir -p /backup
RUN mkdir -p /data

COPY backup.sh /backup/backup.sh
COPY mount.sh /backup/mount.sh
COPY start.sh /backup/start.sh

WORKDIR /backup
CMD sh start.sh
