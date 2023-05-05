#!/bin/sh
cd /tmp
wget http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz
tar xfz ioncube_loaders_lin_x86-64.tar.gz
cp /tmp/ioncube/ioncube_loader_lin_7.2.so /usr/lib/php/20170718
cd /etc/php/7.2/apache2
chmod 777 php.ini
rm php.ini
wget https://raw.githubusercontent.com/asas-dev-web/php-ioncube/main/php/php.ini
chmod 777 php.ini
cd /etc/php/7.2/cli
chmod 777 php.ini
rm php.ini
wget https://raw.githubusercontent.com/asas-dev-web/php-ioncube/main/painel/php.ini
chmod 777 php.ini
sudo service apache2 restart
rm -f $HOME/install-ioncube1.sh* > /dev/null 2>&1
history -c
clear
echo " \e[0;31mInstalado com Sucesso \e[0m"
