#!/bin/bash

echo "[+] création d'un réseau privé"
docker network create simpleweb

echo "[+] création d'un conteneur redis"
docker run --name redis -d --network simpleweb redis:5-alpine

echo "[+] création d'un conteneur pour l'application simpleweb"
docker run --name web -d -p 3000:3000 --network simpleweb oxibis/simpleweb:2