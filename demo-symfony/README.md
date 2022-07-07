# Symfony 6 + PHP 8.0.13 avec Docker

## Commandes

Build et démarrage des services

```bash
  docker-compose build
  docker-compose up -d
```

Ouverture d'un shell sur le conteneur PHP

```bash
  docker exec -it php8-sf6 bash
```

Création d'un projet symfony et démarrage d'un serveur de dev

```bash
  symfony new new-project --full
  cd new-project
  symfony serve -d
```

Création d'un compte utilisateur (identique à celui utilisé côté hôte)

```bash
  adduser <username>
  chown <username>:<username> -R .
```

Edition du fichier project/.env pour paramètrage de connexion au service database

```yaml
  DATABASE_URL="postgresql://oxibis:oxibis@database:5432/oxibis?serverVersion=13&charset=utf8"
```

Création entité + migration + crud

```bash
  symfony console make:entity Test # créer une entité Test avec un seul champ test (paramètres par défaut)
  symfony console make:migration
  symfony console d:m:m # doctrine migrate migrations
  symfony console make:crud Test
```

__Tester en requêtant: http://<ip>:9000/test__