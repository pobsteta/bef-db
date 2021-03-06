#!/bin/bash

# Stoppe les conteneurs
docker stop $(docker ps -a -q)
# Supprime les conteneurs
docker rm $(docker ps -a -q)
# Supprime les images
#docker rmi $(docker images -q)
# Force la suppression des images de base
docker rmi -f $(docker images -q)
# Construit l'image
docker build -t pobsteta/bef-db .
# Lance le container créé détaché (argument -d)
#docker run --name db -p 35432:5432 -d pobsteta/bef-db
