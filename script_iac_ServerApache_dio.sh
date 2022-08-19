#!/bin/bash

echo "Realizando a atualização do servidor"

apt update
apt upgrade -y

echo "Instalando serviços necessários"

apt install apache2 -y
apt install unzip -y

echo "Realizando download dos arquivos do site"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos e copiando para o diretório padrão do Apache"

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
