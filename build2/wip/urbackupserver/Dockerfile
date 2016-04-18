FROM lowet84/rar2fsbase

RUN sudo add-apt-repository ppa:uroni/urbackup
RUN sudo apt-get update
RUN sudo apt-get install -y urbackup-server

RUN mkdir -p /media/BACKUP/urbackup/urbackup_tmp_files

EXPOSE 55414

CMD ["/usr/sbin/start_urbackup_server","--no_daemon"]
