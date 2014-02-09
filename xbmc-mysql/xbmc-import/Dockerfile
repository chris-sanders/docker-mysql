FROM csanders/xbmc-mysql
MAINTAINER Chris Sanders 

# Copy in the /var/lib/mysql folder from a previous install
ADD ./mysql/ /var/lib/mysql-import/
RUN cp -nr /var/lib/mysql-import/* /var/lib/mysql/

# Correct permissions of imported files
RUN chown -R mysql:mysql /var/lib/mysql
RUN chmod -R 770 /var/lib/mysql

# Clean up imported files
RUN rm -fr /var/lib/mysql-import/

# If mysql DB is empty initialize with backed up values
ENTRYPOINT ["/init_db.sh"]

CMD ["mysqld"]

