cd %~dp0
start cmd /C MakeDockerSecretsFolder.bat
docker rm -f setting_up_ghost_in_azure_secrets-1
docker-compose -f docker-compose.dockersecrets.yml down --remove-orphans
docker-compose -f docker-compose.dockersecrets.yml up --build --remove-orphans
pause
start "" ..\..\DockerSecrets\setting_up_ghost_in_azure_secrets
