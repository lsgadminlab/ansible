FROM alpine:latest

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN apk update && apk add ansible-core

RUN ansible-galaxy collection install community.docker

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]