FROM python:3.6

RUN apt-get update
RUN apt-get install -y dos2unix

# Makes it possible to run Docker Commands from inside the Container to the Docker Host
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz && tar --strip-components=1 -xvzf docker-18.06.1-ce.tgz -C /usr/local/bin

RUN pip install docker-compose

RUN mkdir /scripts
COPY copy_and_convert_app_folder.sh /scripts
RUN chmod +x /scripts/copy_and_convert_app_folder.sh
RUN find /scripts -type f -print0 | xargs -0 dos2unix

ENTRYPOINT tail -f /dev/null