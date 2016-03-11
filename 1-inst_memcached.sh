#!/bin/bash

yum install -y --enablerepo=rpmforge memcached
yum install -y php-pecl-memcached gcc automake autoconf libtool make zlib-devel

yum install -y --enablerepo=rpmforge re2c

service memcached start



yum install -y --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-devel php-mbstring  php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof
