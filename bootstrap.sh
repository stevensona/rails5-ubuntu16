#!/usr/bin/env bash

apt-get update
apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev ruby-dev

# install ruby
apt-get install -y ruby
gem install bundler

# install nodejs
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install -y nodejs

# install rails latest
gem install rails

# link homedir to /vagrant
rm -rf /home/ubuntu
ln -s /vagrant /home/ubuntu

