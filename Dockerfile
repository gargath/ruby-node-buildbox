FROM alpine:latest

RUN apk --no-cache add bash jq git openssh sudo python2 ruby npm \
 && gem install --no-ri --no-rdoc bundler
