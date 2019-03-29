FROM php:latest

ARG VCS_REF
ARG BUILD_DATE
ARG BUILD_VERSION

LABEL maintainer="Davi Marcondes Moreira <davi.marcondes.moreira@gmail.com>" \
      org.label-schema.name="DevDrops/PHP-Server" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/devdrops/php-server" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.version=$BUILD_VERSION

RUN apt-get update > /dev/null 2>&1 && \
    apt-get -y install \
        curl git zip unzip zlib1g-dev libzip-dev > /dev/null 2>&1 && \
    apt-get clean && \
    docker-php-ext-install zip && \
    rm -rf /var/lib/apt/lists/* > /dev/null 2>&1

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "code"]
