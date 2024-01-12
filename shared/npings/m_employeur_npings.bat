#!/bin/bash

echo -e "\033[0;33m> Test de la connexion entre les responsables / employeurs et le mailer et en SFTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.1.1

echo -e "\033[0;33m> Test de la connexion entre les responsables / employeurs et le serveur S en tcp par le port 1234\033[0;0m"
nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 172.12.150.1

echo -e "\033[0;33m> Test de la connexion entre les responsables / employeurs et le serveur S en tcp par le port 1234\033[0;0m"
nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 172.12.150.1
