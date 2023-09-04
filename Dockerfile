FROM python:3-alpine

RUN apk add --no-cache --quiet \
            bash \
            curl \
            git \
            groff \
            jq \
            less
RUN pip install --quiet --upgrade --no-cache-dir \
                awscli \
                boto3 \
                s3cmd \
                cloudflare \
    && ln -s /usr/local/bin/cli4 /usr/local/bin/cloudflare

ENTRYPOINT ["/bin/sh"]
