FROM ubuntu:16.04

WORKDIR /skopos

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y --no-install-recommends \
        curl \
        python3 \
        python3-pip python3-setuptools && \
    pip3 install --upgrade pip && \
    pip3 install redis

COPY ./skpp.py ./verify_redis /skopos/

ENTRYPOINT [ "python3", "verify_redis" ]
