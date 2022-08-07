#!/bin/bash
echo "Atualizando"
apt-get update
apt-get upgrade -y
echo "Instalando"
apt-get install apache2 -y
apt-get install unzip -y
echo "Baixando arquivos"
cd /tmp
wget http://github.com/denilsinbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Copiando arquivos"
cd linux-site-dio-main
cp -R * /var/www/html/



