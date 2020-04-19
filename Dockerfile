FROM geircode/setting_up_ghost_in_azure-filecontainer:latest as filecontainer

FROM python:3.8-slim-buster

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get install -y git dos2unix unzip

RUN pip install -r requirements.txt 

WORKDIR /files
COPY --from=filecontainer /files .
RUN ls -al

# Docker CLI
RUN tar --strip-components=1 -xvzf docker.tgz -C /usr/local/bin

# Get the Terraform files. Get newer version from: https://www.terraform.io/downloads.html
RUN unzip -q terraform_linux_amd64.zip -d /usr/bin && \
    terraform --version

RUN unzip -q tflint.zip -d /usr/bin && \
    tflint --version

RUN rm *

ENTRYPOINT tail -f /dev/null
