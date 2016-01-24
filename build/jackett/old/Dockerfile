FROM guillaumegl/docker-jackett

RUN mkdir /original_data && cp -r /data/* /original_data/
COPY restore.sh /
RUN chmod +x /restore.sh
