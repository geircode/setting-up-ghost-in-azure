cd %~dp0
docker rm -f docker_image_builder-1
docker-compose -f docker-compose.yml down --remove-orphans
docker-compose -f docker-compose.yml up -d --build --remove-orphans
pause
docker exec -it docker_image_builder-1 /bin/bash
