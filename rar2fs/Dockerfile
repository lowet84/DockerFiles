FROM ubuntu:14.04
RUN sudo apt-get upgrade
RUN sudo apt-get install libfuse2
RUN sudo apt-get install -y samba samba-common
EXPOSE 137-139

RUN mkdir /files
RUN mkdir /files/rar2fs
RUN mkdir /in
RUN mkdir /out
WORKDIR /out
RUN touch file


WORKDIR /files/rar2fs 
COPY rar2fs/*  /files/rar2fs/
COPY libunrar.so /usr/lib/
COPY smb.conf /etc/samba/

WORKDIR /files/rar2fs/
CMD ./rar2fs -o allow_other /in /out --seek-length=1 && service smbd start && read -r -p "Press any key to continue..." key
