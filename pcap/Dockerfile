FROM debian:jessie
MAINTAINER libaishun libaishun007@gmail.com
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev
RUN apt-get install -y libmysqlclient-dev
RUN pip install MYSQL-python
RUN apt-get install -y python-lxml
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y TShark
RUN pip install pyshark
RUN rm -rf /usr/share/wireshark/init.lua
RUN apt-get install -y inotify-tools
RUN pip install pyinotify
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
CMD ["bash","/start.sh"]
