FROM python:3-alpine

RUN apk add --no-cache --quiet \
            bash \
            git \
            groff \
            jq \
            less
RUN pip install --quiet --upgrade --no-cache-dir \
                awscli \
                s3cmd \
                cloudflare \
    && ln -s /usr/local/bin/cli4 /usr/local/bin/cloudflare
