FROM nvidia/cuda:9.1-cudnn7-devel-ubuntu16.04

# corresponds with Helm chart v0.6
ARG JUPYTERHUB_VERSION=0.8.1

RUN apt-get update && \
    apt-get -y install python3-pip && \
    pip3 install --upgrade --no-cache pip && \
    pip3 install --no-cache jupyterhub==$JUPYTERHUB_VERSION && \
    rm -rf /var/lib/apt/lists/*
