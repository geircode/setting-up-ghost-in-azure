cd %~dp0

REM Build within a Linux Container to get the CR/LF line endings to be correct when building the Linux Container Image
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up -d 

docker exec -it docker_image_builder-1 /scripts/copy_and_convert_app_folder.sh
docker exec -it docker_image_builder-1 docker-compose -f /app-copy/docker-compose.yml build
pause