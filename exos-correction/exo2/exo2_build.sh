#!/bin/bash
REPO=oxibis/myredis:0.1

echo "[+] construction de l'image redis perso"
docker build . -t $REPO