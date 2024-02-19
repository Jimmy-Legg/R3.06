#!/bin/bash

echo -e "\033[0;33m> Test de la connexion entre le mailer et le serveur S en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 172.12.150.1

echo -e "\033[0;33m> Test de la connexion entre le mailer et les employeurs en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.16.1

echo -e "\033[0;33m> Test de la connexion entre le mailer et l'administration en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.16.32.1

echo -e "\033[0;33m> Test de la connexion entre le mailer et les employés en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.32.1