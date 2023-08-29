#!/bin/bash

echo "atualizando e instalando componentes necessários"

apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando os arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
