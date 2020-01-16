FROM python:3.7-alpine

RUN apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build-deps g++ && \
    python3 -m pip install pandas==0.25.3 numpy==1.18.1 --no-cache-dir && \
    apk --purge del .build-deps
