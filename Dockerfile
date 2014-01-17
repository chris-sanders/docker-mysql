FROM csanders/base
MAINTAINER Chris Sanders <sanders.chris@gmail.com>

RUN apt-get install -y mysql-server

EXPOSE 3306

CMD ["mysqld"]
