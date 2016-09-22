FROM ubuntu:xenial

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    curl \
    gdal-bin \
    git \
    libcurl4-openssl-dev \
    libgdal-dev \
    libmemcached-dev \
    libpq-dev \
    memcached \
    mercurial \
    postgresql \
    postgresql-9.5-postgis-2.2 \
    python \
    python-dev \
    python-pip \
    python-vipscc \
    python-virtualenv \
    redis-server \
    sudo \
    vim \

    && rm -rf /var/lib/apt/lists/*

RUN curl -L http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz > /tmp/wkhtmltox.tar.xz && \
    tar -C /usr --strip-components=1 -xvf /tmp/wkhtmltox.tar.xz && \
    rm /tmp/wkhtmltox.tar.xz
