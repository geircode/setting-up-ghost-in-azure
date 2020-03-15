# https://hub.docker.com/_/ubuntu/?tab=description
FROM ubuntu:bionic AS ubuntu_bionic

FROM ubuntu_bionic

RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz && tar --strip-components=1 -xvzf docker-18.06.1-ce.tgz -C /apps

FROM python:3.6

RUN apt-get update
RUN apt-get install -y jq dos2unix

# Makes it possible to run Docker Commands from inside the Container to the Docker Host
# 
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz && tar --strip-components=1 -xvzf docker-18.06.1-ce.tgz -C /usr/local/bin

RUN mkdir /scripts
COPY dockerbuildandpush.sh /scripts
RUN chmod +x /scripts/docker_build_and_run.sh

WORKDIR /scripts
RUN find . -type f -print0 | xargs -0 dos2unix

ENTRYPOINT ["/scripts/dockerbuildandpush.sh"]

# ENTRYPOINT tail -f /dev/null