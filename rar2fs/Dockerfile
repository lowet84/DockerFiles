FROM ubuntu:14.04
RUN sudo apt-get install libfuse2
ADD https://github.com/hasse69/rar2fs/releases/download/v1.22.0/rar2fs-1.22.0.tar.gz /files
ADD http://www.rarlab.com/rar/unrarsrc-5.3.9.tar.gz /files
CMD cd files
CMD ls