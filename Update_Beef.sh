#!/bin/bash

#Pull both samples and the main beef repo
cd Beef
git pull
cd ..
cd Beef_Website
git pull
cd ..

Beef/bin/build.sh
