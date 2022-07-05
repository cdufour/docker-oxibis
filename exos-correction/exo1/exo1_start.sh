#!/bin/bash
echo "[+] démarrage de deux conteneurs redis"
docker run --name redis1 -d redis:5-alpine
docker run --name redis2 -d redis:6-alpine

echo "[+] démarrage de deux conteneurs mysql"
docker run --name mysql1 -d -e MYSQL_ROOT_PASSWORD=password mysql:5.7
docker run --name mysql2 -d -e MYSQL_ROOT_PASSWORD=password mysql:8