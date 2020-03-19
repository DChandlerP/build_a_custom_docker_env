FROM debian:stretch-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    emacs \
    git \
    nano \
    python3 \
    r-base \
    r-base-dev \
    vim \
    && apt-get clean

