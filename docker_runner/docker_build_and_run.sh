#!/bin/sh

cd /app
docker build -f Dockerfile -t geircode/templateworkspace .
docker-compose -f docker-compose.yml up -d --build --remove-orphans
docker exec -it templateworkspace-1 /bin/bash
