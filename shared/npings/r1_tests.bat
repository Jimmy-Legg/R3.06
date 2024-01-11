#!/bin/bash

if nping -c 1 --tcp --source-ip 192.168.1.1 --source-port 25 --dest-ip 192.168.16.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le mailer et les responsables / employeurs en SFTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le mailer et les responsables / employeurs en SFTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 192.168.16.1 --source-port 1234 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre les responsables / employeurs et le serveur S en tcp par le port 1234 : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre les responsables / employeurs et le serveur S en tcp par le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 192.168.16.1 --source-port 22 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre les responsables / employeurs et le serveur S en tcp par le port 22 : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre les responsables / employeurs et le serveur S en tcp par le port 22 : \033[0;31mFailure\033[0;0m"
fi