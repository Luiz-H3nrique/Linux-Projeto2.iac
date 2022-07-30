#!/bin/bash 

echo -e "\e[31m   Atualixzando o servidor ...\e[0m "
apt-get update 
apt-get upgrade -y 

apt-get install apache2 -y
apt-get install unzip -y


echo -e "\e[31m Baixando e copiando os arquivos da aplicação...\e[0m"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/

echo -e "\e[31m  Finalizado ..... \e[0m "
