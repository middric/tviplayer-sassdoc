#!/bin/bash

echo -e "Setting up TV & iPlayer Sassdoc\n\n"
yum install git nodejs python26 ruby rubygems -y
gem install compass -y
npm -g install forever

echo -e "Cloning tviplayer-sassdoc\n\n"
git clone --recursive https://github.com/middric/tviplayer-sassdoc.git
cd tviplayer-sassdoc

echo -e "Seting up sassdoc as a service\n\n"
mv sassdoc-service /etc/init.d/sassdoc
chmod a+x /etc/init.d/sassdoc

echo -e "Setting sassdoc to run on startup\n\n"
chkconfig --level 2345 sassdoc on

cd sassdoc
npm install --python=python26
service sassdoc start
echo -e "\n\nDone! Sassdoc is running at 192.168.192.10:3000"