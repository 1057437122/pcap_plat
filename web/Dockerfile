FROM debian:jessie
MAINTAINER libaishun libaishun007@gmail.com
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN apt-get update
RUN apt-get install -y php5 php5-mysql php5-mcrypt php5-gd php5-curl php5-common
RUN apt-get install -y mariadb-client
RUN apt-get install -y cron
RUN a2enmod rewrite
COPY apache2.conf /etc/apache2/
COPY 000-default.conf  /etc/apache2/sites-available/
#crontab
COPY ./cronfile /etc/crontab
RUN crontab /etc/crontab
#back up db
COPY ./dbbk.sh /dbbk.sh
RUN chmod +x /dbbk.sh
#startup shell
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
CMD ["bash","/start.sh"]
