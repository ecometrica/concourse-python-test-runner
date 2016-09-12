FROM ubuntu:xenial

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    gdal-bin \
    git \
    libcurl4-openssl-dev \
    libgdal-dev \
    libmemcached-dev \
    libpq-dev \
    postgresql \
    python \
    python-dev \
    python-pip \
    python-vipscc \
    python-virtualenv \
    redis-server \
    sudo \
    && rm -rf /var/lib/apt/lists/*
