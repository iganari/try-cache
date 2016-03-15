#!/bin/bash

yum install -y --enablerepo=rpmforge re2c
yum install -y --enablerepo=remi memcached re2c
yum install -y --enablerepo=remi php-pecl-memcached gcc automake autoconf libtool make zlib-devel

service   memcached start
chkconfig memcached on

yum install -y --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-devel php-mbstring  php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof

sed -i 's|;date.timezone =|date.timezone = "Asia/Tokyo"|g' /etc/php.ini

service httpd restart
service memcached restart


