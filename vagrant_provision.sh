#!/usr/bin/env bash

export PATH=/home/vagrant/.rbenv/shims:/home/vagrant/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/vagrant_ruby/bin
cd /vagrant
apt-get -y install nodejs
bundle install
echo alias rails=\'bundle exec rails\' >> ~vagrant/.bash_aliases
echo alias npsrv=\'bundle exec rails server\' >> ~vagrant/.bash_aliases
