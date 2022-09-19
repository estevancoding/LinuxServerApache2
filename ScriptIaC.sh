#!/bin/bash

echo "instalando e atualizando recursos"

apt-get updat -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Baixando arquivo de exibição"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
