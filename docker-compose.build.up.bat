cd %~dp0

call docker-compose.build.all.bat
call docker-compose.up.bat

pause
docker exec -it setting_up_ghost_in_azure-1 /bin/bash