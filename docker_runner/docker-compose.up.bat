cd %~dp0
docker rm -f templateworkspace-runner-1
docker-compose -f docker-compose.yml down --remove-orphans
docker-compose -f docker-compose.yml up --build --remove-orphans
pause
docker exec -it templateworkspace-runner-1 /bin/bash
