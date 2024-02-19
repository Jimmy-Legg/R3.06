#!/bin/bash

echo -e "\033[0;33m> Test de la connexion entre les machines DSI et le serveur S en SSH (tcp port 22)\033[0;0m"
nping -c 1 --tcp --dest-port 22 --source-port 22 --dest-ip 172.12.150.1
