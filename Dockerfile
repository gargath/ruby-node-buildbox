FROM ubuntu:latest

RUN apt-get update \
 && apt-get install -y jq git openssh-client sudo python2.7 python-pip npm curl ruby ruby-dev make gcc zlib1g-dev libsqlite3-dev libpq-dev \
 &&  apt-get install -y libappindicator3-1 wget libasound2 libatk-bridge2.0-0 libgtk-3-0 libnspr4 libnss3 libx11-xcb1 libxss1 libxtst6 lsb-release xdg-utils fonts-liberation \
 && apt-get clean \
 && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
 && dpkg -i google-chrome*.deb \
 && gem install --no-ri --no-rdoc bundler \
 && gem install --no-ri --no-rdoc rake
RUN npm install -g jest \
 && npm install -g parcel
COPY Gemfile /Gemfile
ENV BUNDLE_CACHE_PATH=/gemcache
RUN bundle package --all --all-platforms \
 && rm /Gemfile*
