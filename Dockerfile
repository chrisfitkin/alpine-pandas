FROM python:3.7-alpine

RUN apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build-deps g++ && \
    python3 -m pip install pandas numpy --no-cache-dir && \
    apk --purge del .build-deps
