cd %~dp0
set DOCKER_LATEST_VERSION_FILE=docker-19.03.4.tgz

docker build --no-cache -f Dockerfile -t geircode/setting_up_ghost_in_azure . 
pause