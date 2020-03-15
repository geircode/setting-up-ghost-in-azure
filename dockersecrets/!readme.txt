# Docker Secrets setup

Script container for setting up Secrets for this repository

## Usage

Start Container by running: *docker-compose.dockersecrets.up.bat*

```shell
ssh-keygen -t rsa -b 4096 -C your@email.no -P MyPassword -f /setting_up_ghost_in_azure_secrets/ubuntu_rsa
```

On Windows Host, navigate to "..\..\DockerSecrets\setting_up_ghost_in_azure_secrets" to find the SSH Keys.
