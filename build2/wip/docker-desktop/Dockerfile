FROM ubuntu:15.10

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:gnome3-team/gnome3-staging
RUN apt-get update
RUN apt-get upgrade -y
#RUN apt-get install -y gnome-core 
#RUN apt-get install -y xfce4 
#RUN apt-get install -y firefox
#RUN apt-get install -y vnc4server
#COPY xstartup ~/.vnc/xstartup
#RUN chmod +x ~/.vnc/xstartup
#COPY vncserver /vncserver
#RUN chmod +x /vncserver
#RUN mkdir -p /etc/vncserver
#COPY vncservers.conf /etc/vncserver/vncservers.conf
#RUN update-rc.d vncserver defaults
#CMD /vncserver
