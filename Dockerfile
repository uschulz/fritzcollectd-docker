FROM alpine:3.10

LABEL maintainer="Uwe Schulz <uwe@s4z.org>"

RUN apk add --update-cache \
    collectd \
    collectd-python \
    collectd-network \
    python-dev \
    py-pip \
    gcc \
    libxml2-dev \
    libxslt-dev \
    musl-dev \
    && pip install fritzcollectd \
    && apk del gcc python-dev musl-dev \
    && rm -rf /var/cache/apk/*

EXPOSE 25826

CMD collectd -f
