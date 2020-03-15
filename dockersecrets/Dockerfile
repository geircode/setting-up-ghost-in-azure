FROM python:3.6
# FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nano dos2unix

COPY .bashrc /root/.bashrc

RUN dos2unix /root/.bashrc

WORKDIR /app
COPY . /app

RUN find . -type f -print0 | xargs -0 dos2unix

# ENTRYPOINT tail -f /dev/null
ENTRYPOINT ["/app/create_ssh_key_with_password.sh"]
