#!/bin/bash
BASEDIR=$(dirname "$0")
echo "$BASEDIR"
cd $BASEDIR

docker rm -f ghost_service-1
docker-compose -f docker-compose.yml down --remove-orphans

docker network create -d overlay --attachable setting_up_ghost_in_azure_network

docker-compose -f docker-compose.yml up -d --remove-orphans
# wait for 1-2 seconds for the container to start
sleep 2
# http://localhost:8900/

docker exec -it ghost_service-1 /bin/bash