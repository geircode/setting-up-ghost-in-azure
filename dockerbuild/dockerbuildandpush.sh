#!/bin/sh

cat /run/secrets/dockerloginpassword | docker login --username geircode --password-stdin
cd /app
docker build -f Dockerfile -t geircode/templateworkspace:latest .
docker push geircode/templateworkspace:latest