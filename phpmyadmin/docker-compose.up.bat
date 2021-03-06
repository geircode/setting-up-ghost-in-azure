cd %~dp0
docker rm -f phpmyadmin-1
docker-compose -f docker-compose.yml down --remove-orphans
REM docker-compose -f docker-compose.yml pull

docker network create -d overlay --attachable setting_up_ghost_in_azure_network

docker-compose -f docker-compose.yml up -d --remove-orphans
REM wait for 1-2 seconds for the container to start
REM http://localhost:8900/
pause
docker exec -it phpmyadmin-1 /bin/bash