#!/bin/bash
sudo -i
apt-get install -y bc 
apt-get install -y elinks 
apt-get install -y apache2
apt-get install -y sysstat 
apt-get install -y libapache2-mod-php 
echo DocumentRoot /var/www/html/ » /etc/apache2/apache2.conf 
cp /home/recaple/ports.conf /etc/apache2/ports.conf 
servise apache2 restart 
apt-get install -y nginx 
cp /home/recaple/nginx.conf /etc/nginx/nginx.conf 
servise nginx restart 
apt-get install -y libapache2-mod-rpaf 
a2enmod rpaf 
cp /home/recaple/rpaf.conf /etc//apache2/mods-enabled/rpaf.conf 
/etc/init.d/httpd restart 
/etc/init.d/nginx restart 
exit
