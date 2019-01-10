FROM circleci/node:8.10

MAINTAINER Martin Dunford <martindunford@urbanzoo.io>

ENV PYTHONIOENCODING=UTF-8

RUN sudo -s

RUN apt-get update \
    && apt-get install -y --no-install-recommends python-setuptools=33.1.1-1 python-pip=9.0.1-2 \
    python-wheel=0.29.0-2 libpython-dev=2.7.13-2 \
    && apt-get clean

RUN pip install awscli --upgrade --user

ENV PATH="/root/.local/bin:$PATH"
