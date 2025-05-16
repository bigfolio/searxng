FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
        bash \
        git \
        python3 \
        py3-pip \
        py3-virtualenv \
        libxml2-dev \
        libxslt-dev \
        libffi-dev \
        openssl-dev \
        build-base \
        tini

WORKDIR /app

RUN git clone https://github.com/searxng/searxng.git . && \
    ./manage.sh update_packages && \
    ./manage.sh install_all

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["./manage.sh", "run"]
