FROM ubuntu:latest

RUN apt-get update \
 && apt-get install -y jq git openssh-client sudo python2.7 python-pip npm curl ruby \
 && apt-get clean \
 && gem install --no-ri --no-rdoc bundler
