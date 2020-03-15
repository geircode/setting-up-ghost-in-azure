cd %~dp0
docker exec -it docker_image_builder-1 /scripts/copy_and_convert_app_folder.sh
pause