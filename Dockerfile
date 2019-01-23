FROM circleci/node:9.11

MAINTAINER Martin Dunford <martindunford@urbanzoo.io>

RUN sudo apt-get install apt-utils

RUN sudo apt-get update

RUN sudo apt-get install -qq -y python-pip libpython-dev

RUN sudo curl -O https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py

RUN sudo pip install -q awscli==1.15.50 --upgrade # lock version

ENV PATH="/root/.local/bin:$PATH"
