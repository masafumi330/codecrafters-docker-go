FROM golang:1.13-alpine

RUN apk add curl
RUN apk add go

ARG docker_explorer_version=v11
RUN curl -Lo /usr/bin/docker-explorer https://github.com/codecrafters-io/docker-explorer/releases/download/${docker_explorer_version}/${docker_explorer_version}_linux_amd64
RUN chmod +x /usr/bin/docker-explorer

ADD . /app
WORKDIR /app

ENTRYPOINT ["/app/your_docker.sh"]