#!/bin/bash

echo -e "\033[0;33m> Test de la connexion entre l'employé et le serveur S en SFTP (tcp port 22)\033[0;0m"
nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 192.168.32.1

echo -e "\033[0;33m> Test de la connexion de l'employé au serveur en tcp via le port 1234\033[0;0m"
nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 192.168.32.1

echo -e "\033[0;33m> Test de la connexion entre le serveur S et le mailer en SMTP (tcp port 25)\033[0;0m"
nping -c 1 --tcp --dest-port 25 --source-port 25 --dest-ip 192.168.1.1

echo -e "\033[0;33m> Test de la connexion entre les employeurs / responsables et le serveur S en tcp par le port 1234\033[0;0m"
nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 192.168.16.1

echo -e "\033[0;33m> Test de la connexion entre les employeurs / responsables et le serveur S en SFTP (tcp port 22)\033[0;0m"
nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 192.168.16.1

echo -e "\033[0;33m> Test de la connexion entre l'administration et le serveur S en tcp par le port 1234\033[0;0m"
nping -c 1 --tcp --dest-port 1234 --source-port 1234 --dest-ip 192.16.32.1

echo -e "\033[0;33m> Test de la connexion entre l'administration et le serveur S en SFTP (tcp port 22)\033[0;0m"
nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 192.16.32.1

#test connexion entre S et internet par un ping 