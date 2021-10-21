#!/bin/bash
mkdir /web
cd /web
yum install -y gcc gcc-c++ wget expat-devel
wget -P /web https://downloads.apache.org/apr/apr-1.7.0.tar.gz
wget -P /web https://downloads.apache.org/apr/apr-util-1.6.1.tar.gz
wget -P /web https://downloads.apache.org/httpd/httpd-2.4.51.tar.gz
wget -P /web https://downloads.apache.org/httpd/httpd-2.4.51.tar.gz
cd /web
tar xvfz apr-1.7.0.tar.gz
tar xvfz apr-util-1.6.1.tar.gz
tar xvfz httpd-2.4.51.tar.gz
tar xvfz pcre-8.45.tar.gz
cd /web/apr-1.7.0 ; ./configure --prefix=/web/apr ; make && make install
cd /web/apr-util- 1.6.1 ; ./configure --prefix=/web/aprutil --with-apr=/web/apr ; make && make install
cd /web/pcre-8.45 ; ./configure --prefix=/web/pcre ; make && make install
cd /web/httpd-=2.4.51 ; ./configure --prefix=/usr/local/apache2 --with-apr=/web/apr --with-apr-util=/web/aprutil --with-pcre=/web/pcre
/usr/local/apache2/bin/apachectl start

