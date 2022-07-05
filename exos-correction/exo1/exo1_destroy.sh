#!/bin/bash
echo "[+] arrêt et destruction des deux conteneurs redis"
docker stop redis1 redis2
docker rm redis1 redis2

echo "[+] arrêt et destruction des deux conteneurs mysql"
docker stop mysql1 mysql2
docker rm mysql1 mysql2