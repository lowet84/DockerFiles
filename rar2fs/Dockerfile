FROM ubuntu:14.04
RUN sudo apt-get upgrade
RUN sudo apt-get install libfuse2

RUN mkdir /files
RUN mkdir /files/rar2fs
RUN mkdir /files/rartemp
WORKDIR /files/rar2fs 
COPY rar2fs/*  /files/rar2fs/
COPY libunrar.so /usr/lib/
WORKDIR /files/rartemp/
CMD touch testfile && ls && read -r -p "Press any key to continue..." key
