FROM python:3.7-alpine

RUN apk add --no-cache libstdc++ && \
    apk add --no-cache --virtual .build-deps g++ && \
    python3 -m pip install pandas==0.25.3 numpy==1.18.1 --no-cache-dir && \
    apk --purge del .build-deps

RUN echo "http://dl-8.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache --update-cache add gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
RUN pip install scipy==1.4.1 matplotlib==3.1.2