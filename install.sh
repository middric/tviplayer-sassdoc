#!/bin/bash

echo -e "\033[36mSetting up TV & iPlayer Sassdoc\033[0m"
echo -e "\033[36m===============================\033[0m"
yum install git nodejs python26 ruby rubygems -y
gem install compass -y

echo -e "\033[36mCloning tviplayer-sassdoc from github\033[0m"
echo -e "\033[36m=====================================\033[0m"
git clone --recursive https://github.com/middric/tviplayer-sassdoc.git
cd tviplayer-sassdoc

echo -e "\033[36mSetting up sassdoc\033[0m"
echo -e "\033[36m==================\033[0m"
cd sassdoc
npm install --python=python26
npm -g install forever

echo -e "\033[36mSetting sassdoc to run on startup\033[0m"
echo -e "\033[36m=================================\033[0m"
cd ..
cp sassdoc-service /etc/init.d/sassdoc
chmod a+x /etc/init.d/sassdoc
chkconfig --level 2345 sassdoc on

service sassdoc start
echo -e "\033[36mDone! Sassdoc is running at 192.168.192.10:3000\033[0m"