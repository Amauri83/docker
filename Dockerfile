FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible
    

COPY host /tmp
COPY sudoers /tmp
COPY play.yml /tmp

RUN apt-get install vim -y




