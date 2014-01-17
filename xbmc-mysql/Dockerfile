FROM csanders/mysql
MAINTAINER Chris Sanders <sanders.chris@gmail.com>

ADD my.cnf /etc/mysql/my.cnf
ADD add_xbmc_user.sh /add_xbmc_user.sh
ADD init_db.sh /init_db.sh

RUN chmod +x /add_xbmc_user.sh /init_db.sh
RUN /add_xbmc_user.sh

# Save configuration to allow local volume mounting
RUN cp -al /var/lib/mysql /var/lib/mysql-bak

# If mysql DB is empty initialize with backed up values
ENTRYPOINT ["/init_db.sh"]

CMD ["mysqld"]

