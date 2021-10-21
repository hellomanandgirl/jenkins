#!/bin/bash
sudo rm -rf /web
sudo mkdir /web
sudo cd /web
sudo yum install -y gcc gcc-c++ wget expat-devel
sudo wget -P /web https://downloads.apache.org/apr/apr-1.7.0.tar.gz
sudo wget -P /web https://downloads.apache.org/apr/apr-util-1.6.1.tar.gz
sudo wget -P /web https://downloads.apache.org/httpd/httpd-2.4.51.tar.gz
sudo wget -P /web https://sourceforge.net/projects/pcre/files/pcre/8.45/pcre-8.45.tar.gz --no-check-certificate
sudo cd /web
sudo tar xvfz apr-1.7.0.tar.gz
sudo tar xvfz apr-util-1.6.1.tar.gz
sudo tar xvfz httpd-2.4.51.tar.gz
sudo tar xvfz pcre-8.45.tar.gz
sudo cd /web/apr-1.7.0 ; sudo ./configure --prefix=/web/apr ; sudo make && sudo make install
sudo cd /web/apr-util-1.6.1 ; sudo ./configure --prefix=/web/aprutil --with-apr=/web/apr ; sudo make && sudo make install
sudo cd /web/pcre-8.45 ; ./configure --prefix=/web/pcre ; sudo make && sudo make install
sudo cd /web/httpd-2.4.51 ; ./configure --prefix=/usr/local/apache2 --with-apr=/web/apr --with-apr-util=/web/aprutil --with-pcre=/web/pcre ; sudo make && sudo make install
/usr/local/apache2/bin/apachectl start

