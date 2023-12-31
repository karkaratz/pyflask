FROM almalinux/8-base:latest
USER root
ENV DAEMON_RUN=true
EXPOSE 5000

RUN yum -y install wget
RUN yum -y install unzip
RUN mkdir installation
RUN yum -y update
RUN yum -y install python311
RUN cd installation; wget https://bootstrap.pypa.io/get-pip.py
RUN cd installation; python3 get-pip.py
Run cd installation; rm get-pip.py
RUN pip3 install flask SQLAlchemy numpy pandas
RUN yum -y install iptables
ADD ./hello.py installation/
CMD iptables -I INPUT -p tcp --dport 5000 -j ACCEPT
