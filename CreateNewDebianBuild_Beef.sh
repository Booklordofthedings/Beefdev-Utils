#!/bin/bash

var=$(date '+%Y%m%d')
dpkg-deb -b BeefDeb
cp BeefDeb.deb DebVersions/BeefBuild_0.43.4.${var}_amd64.deb
