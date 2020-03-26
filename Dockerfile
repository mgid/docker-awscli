FROM python:3.7-alpine

RUN apk add --no-cache --quiet groff less libmagic && \
    pip install --upgrade --no-cache-dir awscli s3cmd python-magic
