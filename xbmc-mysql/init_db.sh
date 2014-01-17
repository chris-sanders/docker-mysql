#!/bin/bash
if [ ! "$(ls -A /var/lib/mysql)" ];then
  echo "USING DB BACKUP FILES"
  cp -r /var/lib/mysql-bak/* /var/lib/mysql/
  chown -R mysql:mysql /var/lib/mysql/
fi
$1
