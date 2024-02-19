#!/bin/bash

if nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.1.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et le mailer en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et le mailer en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 192.168.16.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S aux employés / responsables en tcp par le port 1234 : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S aux employés / responsables en tcp par le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 192.16.32.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et l'administration en tcp par le port 1234 : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et l'administration en tcp par le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 192.168.16.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et les employés / responsables en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et les employés / responsables en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 192.16.32.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et l'administration en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et l'administration en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 192.168.1.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et la DSI en SSH (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et la DSI en SSH (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --icmp --dest-ip 8.8.8.8 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et Internet en ICMP : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et Internet en ICMP : \033[0;31mFailure\033[0;0m"
fi