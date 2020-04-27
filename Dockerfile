FROM python:3.7-alpine

RUN apk add --no-cache --quiet \
            git \
            groff \
            jq \
            less \
    && pip install --upgrade --no-cache-dir \
                awscli \
                s3cmd \
                cloudflare \
    && ln -s /usr/local/bin/cli4 /usr/local/bin/cloudflare
