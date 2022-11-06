#!/bin/bash

echo "Atualizando o servidor"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Download da Aplicação Web"


apt-get install wget -y
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "Descompactar a Aplicação Web"

unzip main.zip


echo "Copiar conteudo do diretorio para pasta Html"


cd linux-site-dio-main

cp -R * /var/www/html/

