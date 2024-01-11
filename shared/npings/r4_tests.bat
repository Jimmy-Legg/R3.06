#!/bin/bash

if nping -c 1 --tcp --source-ip 172.16.0.1 --source-port 22 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre l'employé et le serveur S en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre l'employé et le serveur S en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 172.16.0.1 --source-port 1234 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion de l'employé au serveur en tcp via le port 1234 : \033[0;32mSuccess\033[0;0m"
else 
	echo -e "\033[0;33mTest de la connexion de l'employé au serveur en tcp via le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 172.12.150.1 --source-port 1234 --dest-ip scanme.org | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest connexion du serveur à l'employé en tcp via le port 1234 : \033[0;32mSuccess\033[0;0m"
else 
	echo -e "\033[0;33mTest connexion du serveur à l'employé en tcp via le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 172.12.150.1 --source-port 22 --dest-ip scanme.org | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et l'employé en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre le serveur S et l'employé en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 172.12.150.1 --source-port 25 --dest-ip 192.168.1.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et le mailer en SMTP (tcp port 25) : \033[0;32mSuccess\033[0;0m"
else 
	echo -e "\033[0;33mTest de la connexion entre le serveur S et le mailer en SMTP (tcp port 25) : \033[0;31mFailure\033[0;0m" 
fi

if nping -c 1 --tcp --source-ip 192.168.16.1 --source-port 1234 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre les employeurs / responsables et le serveur S en tcp par le port 1234 : \033[0;32mSuccess\033[0;0m"
else 
	echo -e "\033[0;33mTest de la connexion entre les employeurs / responsables et le serveur S en tcp par le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 192.168.16.1 --source-port 22 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre les employeurs / responsables et le serveur S en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else
	echo -e "\033[0;33mTest de la connexion entre les employeurs / responsables et le serveur S en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 192.16.32.1 --source-port 1234 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre l'administration et le serveur S en tcp par le port 1234 : \033[0;32mSuccess\033[0;0m"
else 
	echo -e "\033[0;33mTest de la connexion entre l'administration et le serveur S en tcp par le port 1234 : \033[0;31mFailure\033[0;0m"
fi

if nping -c 1 --tcp --source-ip 192.16.32.1 --source-port 22 --dest-ip 172.12.150.1 | grep -q "Lost: 0"; then 
	echo -e "\033[0;33mTest de la connexion entre l'administration et le serveur S en SFTP (tcp port 22) : \033[0;32mSuccess\033[0;0m"
else 
	echo -e "\033[0;33mTest de la connexion entre l'administration et le serveur S en SFTP (tcp port 22) : \033[0;31mFailure\033[0;0m"
fi