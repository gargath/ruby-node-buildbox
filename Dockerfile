FROM ubuntu:latest

RUN apt-get update \
 && apt-get install -y jq git openssh-client sudo python2.7 python-pip npm curl ruby ruby-dev make gcc zlib1g-dev libsqlite3-dev libpq-dev \
 && apt-get clean \
 && gem install --no-ri --no-rdoc bundler \
 && gem install --no-ri --no-rdoc rake
RUN npm install -g ember-cli@2.12.1 \
 && npm install -g bower
COPY Gemfile /Gemfile
ENV BUNDLE_CACHE_PATH=/gemcache
RUN bundle package --all --all-platforms \
 && rm /Gemfile*
