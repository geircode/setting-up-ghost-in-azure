FROM geircode/setting_up_ghost_in_azure-filecontainer:latest as filecontainer

FROM python:3.8-slim-buster

ARG docker_latest_version_file_arg="docker-19.03.5.tgz"
ENV DOCKER_LATEST_VERSION_FILE=${docker_latest_version_file_arg}

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y git dos2unix unzip

RUN pip install -r requirements.txt 

WORKDIR /files
COPY --from=filecontainer /files .
RUN ls -al

# Docker CLI
RUN tar --strip-components=1 -xvzf ${DOCKER_LATEST_VERSION_FILE} -C /usr/local/bin

# Get the Terraform files. Get newer version from: https://www.terraform.io/downloads.html
RUN unzip -q terraform_linux_amd64.zip -d /usr/bin && \
    terraform --version

RUN unzip -q tflint.zip -d /usr/bin && \
    tflint --version

RUN rm *

ENTRYPOINT tail -f /dev/null
