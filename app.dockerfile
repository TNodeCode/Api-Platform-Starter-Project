# Base image
FROM phpdockerio/php74-fpm:latest

# Set working directory
WORKDIR "/app"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install  php7.4-mysql php7.4-pgsql php-yaml \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

# Copy PHP INI configuration file overrides
COPY ./php-ini-overrides.ini /etc/php/7.4/fpm/conf.d/99-overrides.ini

# Copy dependency definitions
COPY ./composer.json ./

# Install dependencies
RUN composer install

# Copy application
COPY ./ ./