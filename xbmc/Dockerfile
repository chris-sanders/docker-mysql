FROM csanders/mysql
MAINTAINER Chris Sanders <sanders.chris@gmail.com>

ADD my.cnf /etc/mysql/my.cnf
ADD add_xbmc_user.sh /add_xbmc_user.sh
ADD init_db.sh /init_db.sh

RUN chmod +x /add_xbmc_user.sh /init_db.sh
RUN /add_xbmc_user.sh

# Save configuration to allow local volume mounting
RUN cp -al /var/lib/mysql /var/lib/mysql-bak

ENTRYPOINT ["/init_db.sh"]

#CMD ["/init_db.sh"]
CMD ["mysqld"]

