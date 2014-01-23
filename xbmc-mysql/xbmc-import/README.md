xbmc-import
============

By default this image will be the same as xbmc-mysql, but it allows you to build databases into the image.  This can be useful if you have a currently running mysql database or copied one out of a previous container and want to build an image with that database.

# Building the image
To build this image as-is simply run
```
sudo docker build csanders/xbmc-import
```

# Database
To add previous databases to this image simply place them in the "xbmc" folder before building.  You can copy the necessary folders out of previous container with the docker cp command.
```
sudo docker cp <xbmc-mysql-container>:/var/lib/mysql ./xbmc
```
Only the MyVideos* and MyMusic* databases are needed, you can delete the other files before building to save space.  This image will preserve the default xbmc-mysql settings from the source image so deleting extra files are not required.

