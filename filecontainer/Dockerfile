FROM library/alpine as filecontainer

RUN apk add --update ca-certificates \
 && apk add --update -t deps curl
 
WORKDIR /files

ARG docker_latest_version_file_arg="docker-19.03.2.tgz"
ENV DOCKER_LATEST_VERSION_FILE=${docker_latest_version_file_arg}

RUN echo "Download => https://download.docker.com/linux/static/stable/x86_64/${DOCKER_LATEST_VERSION_FILE}"

RUN curl -fL https://download.docker.com/linux/static/stable/x86_64/${DOCKER_LATEST_VERSION_FILE} -o docker.tgz

# Terraform
ARG TERRAFORM_VERSION=0.12.24
RUN echo "Download => https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
RUN curl -fL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform_linux_amd64.zip

# tflint
ARG TFLINT_VERSION=0.15.3
RUN echo "Download => https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip"
RUN curl -fL https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip -o tflint.zip

RUN ls -al

ENTRYPOINT tail -f /dev/null