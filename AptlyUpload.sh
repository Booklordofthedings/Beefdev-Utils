#!/bin/bash
#This expects you to have aptly installed and doesnt install it for you

aptly repo create -distribution=bookworm -component=main beefbuild
aptly repo add beefbuild DebVersions
aptly publish drop bookworm
aptly publish repo beefbuild
mkdir Published
#hardcoded aptly directory
cp -r /home/book/.aptly/public/dists/ Published/
cp -r /home/book/.aptly/public/pool/ Published/
