cd %~dp0
docker-compose -f filecontainer/docker-compose.yml build
docker-compose -f docker-compose.yml up -d --build --remove-orphans
pause
docker exec -it setting_up_ghost_in_azure-1 /bin/bash