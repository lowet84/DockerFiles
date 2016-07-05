FROM phusion/baseimage

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y wget
RUN apt-get install -y unzip

RUN wget https://sourceforge.net/projects/triplea/files/TripleA/1_8_0_9/triplea_1_8_0_9_all_platforms.zip/download -O triplea.zip

RUN unzip triplea.zip
COPY run-headless-game-host.sh /triplea_1_8_0_9/run-headless-game-host.sh

EXPOSE 3300
CMD ["sh","/triplea_1_8_0_9/run-headless-game-host.sh"]
