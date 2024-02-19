#!/bin/bash

if nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le mailer et le serveur S en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le mailer et le serveur S en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.16.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le mailer et les employeurs en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le mailer et les employeurs en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.16.32.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le mailer et l'administration en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le mailer et l'administration en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.16.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le mailer et les employés en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le mailer et les employés en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi