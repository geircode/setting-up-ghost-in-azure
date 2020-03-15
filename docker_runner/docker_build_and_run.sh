#!/bin/sh

cd /app
docker build -f Dockerfile -t geircode/setting_up_ghost_in_azure .
docker-compose -f docker-compose.yml up -d --build --remove-orphans
docker exec -it setting_up_ghost_in_azure-1 /bin/bash
