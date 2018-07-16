FROM ubuntu:latest

RUN apt-get update \
 && apt-get install -y jq git openssh-client sudo python2.7 python-pip ruby npm \
 && gem install --no-ri --no-rdoc bundler
