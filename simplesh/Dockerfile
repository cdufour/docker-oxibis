FROM debian:11-slim

WORKDIR /app

# copie le fichier app.sh local vers /app côté image
COPY app.sh .

# ajoute l'exécutabilité au fichier app.sh
RUN chmod +x app.sh

# commande de démarrage
CMD ["/bin/bash", "app.sh"]
