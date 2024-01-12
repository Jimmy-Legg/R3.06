#!/bin/bash

echo -e "\033[0;33m> Test de la connexion entre le mailer et l'administration en SMTP (tcp port 22)\033[0;0m"
nping -c 1 --tcp --source-ip 192.168.1.1 --source-port 25 --dest-ip 192.16.32.1

echo -e "\033[0;33m> Test de la connexion entre l'administration et le serveur S en tcp par le port 25 (tcp port 25)\033[0;0m"
nping -c 1 --tcp --source-ip 192.16.32.1 --source-port 1234 --dest-ip 172.12.150.1

echo -e "\033[0;33m> Test de la connexion entre l'administration et le serveur S en SFTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --source-ip 192.16.32.1 --source-port 22 --dest-ip 172.12.150.1