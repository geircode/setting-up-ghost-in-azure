#!/bin/sh
docker rm -f phpmyadmin-1
docker rm -f mariadb
docker-compose down --volumes --remove-orphans
docker system prune --force
docker volume prune --force
docker ps
docker volume ls