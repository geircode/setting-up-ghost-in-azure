FROM geircode/setting_up_ghost_in_azure-filecontainer:latest as filecontainer

FROM python:3.8-slim-buster

ARG docker_latest_version_file_arg="docker-19.03.5.tgz"
ENV DOCKER_LATEST_VERSION_FILE=${docker_latest_version_file_arg}

WORKDIR /app
COPY . /app

# RUN pip install -r requirements.txt 

# RUN apt-get update
# RUN apt-get install -y jq

# RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.03.1-ce.tgz && tar --strip-components=1 -xvzf docker-17.03.1-ce.tgz -C /usr/local/bin

WORKDIR /files
COPY --from=filecontainer /files .
RUN tar --strip-components=1 -xvzf ${DOCKER_LATEST_VERSION_FILE} -C /usr/local/bin
RUN rm *

ENTRYPOINT tail -f /dev/null
