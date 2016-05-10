FROM phusion/baseimage

RUN apt-get update && apt-get install -y wget unzip && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN curl -s https://install.meteor.com | sh 
RUN wget https://github.com/rsercano/mongoclient/archive/master.zip
RUN unzip master.zip
