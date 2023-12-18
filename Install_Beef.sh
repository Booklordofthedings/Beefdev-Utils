#!/bin/bash

#Install all dependencies for beef and install and compile beef
sudo apt update
apt install cmake -y
apt install python2.7 -y
apt install git -y

#Download the beef repo and the current set of sample projects
git clone https://github.com/beefytech/Beef
git clone https://github.com/beefytech/Beef_website

Beef/bin/build.sh
