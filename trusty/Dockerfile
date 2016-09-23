FROM ubuntu:trusty

# Generate a locale so we get rid of ascii for postgres and some tests.
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
RUN update-locale LANG=en_US.utf8

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    curl \
    gdal-bin \

    git \
    libgdal-dev \
    libmemcached-dev \
    libpq-dev \
    libffi-dev \
    libcurl4-openssl-dev \
    optipng \
    memcached \
    mercurial \
    postgresql \
    postgresql-9.3-postgis-2.1 \
    python \
    python-dev \
    python-pip \
    python-vipscc \
    python-virtualenv \
    redis-server \
    sudo \
    vim \
    xvfb \
    
    # Dependencies for wkhtmltox
    fontconfig \
    libfontenc1 \
    libxfont1 \
    libxrender1 \
    x11-common \
    xfonts-75dpi \
    xfonts-base \
    xfonts-encodings \
    xfonts-utils \

    && rm -rf /var/lib/apt/lists/*

# Install wkhtmltopdf to simplify test scripts.
RUN curl -L http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb > /tmp/wkhtmltox.deb && \
    dpkg -i /tmp/wkhtmltox.deb && \
    rm /tmp/wkhtmltox.deb

# Add a non-root user.
RUN useradd -ms /bin/bash tester
RUN echo "tester ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER tester
