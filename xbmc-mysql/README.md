xbmc-mysql
============

Configures mysql for use with XBMC as per wiki.xbmc.org instructions
* bind-address set to 0.0.0.0
* no root password set on mysql (though by default root can not be accessed remotely)

# Running the image
For default settings run with
```
sudo docker run -p 3306:3306 -d csanders/xbmc-mysql
```
Additionally using the '-name' flag will allow you to name the running container for easier restarts and snapshots.


# Database
If you want to run with your database on a local volume you can mount to /var/lib/mysql, this image will take care of restoring settings to defaults if /var/lib/mysql is an empty folder.  However, by leaving the database inside the container you can snapshot the container to revision the database and do safe trial runs of database upgrades between XBMC versions with out having to export/import the database.

