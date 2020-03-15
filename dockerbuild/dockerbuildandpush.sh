#!/bin/sh

cat /run/secrets/dockerloginpassword | docker login --username geircode --password-stdin
cd /app
docker build -f Dockerfile -t geircode/setting_up_ghost_in_azure:latest .
docker push geircode/setting_up_ghost_in_azure:latest