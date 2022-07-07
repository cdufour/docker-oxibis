# Démo Docker Swarm

## Prérequis
Créer un cluster, avec 2 noeuds minimum : le **"leader"** et un **"worker"** par les commandes:  
__docker swarm init__ chez le leader et __docker swarm join__ chez le worker

## Déployer une pile de services dans le cluster swarm
```bash
  docker node ls # affiche les noeuds du cluster
  docker stack deploy --compose-file docker-compose.yml demostack # déploie le service calculator
  docker stack ls # affiche les piles de services
  docker service ls # affiche les services et replicas associés
  docker stack ps demostack # affiche les conteneurs de la stack, état et noeud associés
  docker stack rm demostack # supprimer la stack, réseau, services et conteneurs associés
```