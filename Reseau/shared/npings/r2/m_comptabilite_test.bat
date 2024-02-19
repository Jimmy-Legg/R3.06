#!/bin/bash

if nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et le serveur S en tcp port 1234 : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et le serveur S en tcp port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.1.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et le mailer en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et le mailer en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et le serveur S en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et le serveur S en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 80 --source-port 80 --dest-ip google.fr | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et internet via HTTP (tcp port 80) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et internet via HTTP (tcp port 80) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 443 --source-port 443 --dest-ip google.fr | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et internet via HTTPS (tcp port 443) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre la comptabilité et internet via HTTPS (tcp port 443) : \033[0;31mFailure\033[0;0m"
fi
