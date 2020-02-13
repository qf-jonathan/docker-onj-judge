FROM alpine:3.8

ENV JAVA_HOME=/usr/lib/jvm/default-jvm

RUN apk --update add \
        python \
        python3 \
        php5 \
        php5-cli \
        php5-json \
        php5-mysql \
        mysql-client \
        coreutils \
        openjdk7 \
        gcc \
        g++ \
        ca-certificates \
        wget \
    && rm -rf /var/cache/apk/* \
    && ln -sf "${JAVA_HOME}/bin/"* "/usr/bin/"
RUN wget --quiet --output-document=/etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-php5-redis/releases/download/3.1.6-r0/php5-redis-3.1.6-r0.apk
RUN apk add php5-redis-3.1.6-r0.apk

COPY ./onj /usr/src/onj/
WORKDIR /usr/src/onj/
