#!/bin/bash
mkdir /home/recaple
apt-get install -y bc 
apt-get install -y elinks
apt-get install -y sysstat
apt-get install nginx -y
cp default /etc/nginx/sites-available/
nginx -s reload
apt-get install apache2 php7.0 libapache2-mod-php7.0 -y
cp ports.conf /etc/apache2/
cp 000-default.conf /etc/apache2/sites-available/
apachectl restart
rm -rf /var/www/html/*
mkdir -p /var/www/html/sysinfo
cp index.php /var/www/html/sysinfo/ 
cp t.sh /usr/lib/cgi-bin/
cp t1.sh /usr/lib/cgi-bin/
cp t2.sh /usr/lib/cgi-bin/
cp t3.sh /usr/lib/cgi-bin/
cp t4.sh /usr/lib/cgi-bin/
cp t0.sh /usr/lib/cgi-bin/
mv cronio.sh /home/recaple/
echo "* * * * * root /home/recaple/cronio.sh" >> /etc/crontab
exit
