#!/bin/bash

echo -e "\033[0;33m> Test de la connexion entre le serveur S et le mailer par le port 1234\033[0;0m"
nping -c 1 --tcp --source-ip 172.12.150.1 --source-port 1234 --dest-ip 192.168.1.1

echo -e "\033[0;33m> Test de la connexion entre le mailer et les responsables / employeurs en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --source-ip 192.168.1.1 --source-port 25 --dest-ip 192.168.16.1

echo -e "\033[0;33m> Test de la connexion entre le mailer et l'administration en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --source-ip 192.168.1.1 --source-port 25 --dest-ip 192.16.32.1