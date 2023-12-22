#!/bin/bash

#Remove old existing stuff
rm -rf BeefDeb

#Create folders
mkdir BeefDeb
mkdir DebVersions

cd BeefDeb
#Create control file
mkdir DEBIAN
var=$(date '+%Y%m%d')
sed "s/CURRENTDATE/${var}/" ../control >> DEBIAN/control


#Create link file
mkdir usr
mkdir usr/bin
#Create run file
printf "#! /bin/bash\nexec /opt/BeefBuild/bin/BeefBuild \"\$@\"" > usr/bin/BeefBuild
chmod a+x usr/bin/BeefBuild

mkdir opt
mkdir opt/BeefBuild

cp -r ../Beef/wasm/ opt/BeefBuild/wasm/
cp ../Beef/LICENSE.TXT opt/BeefBuild/
cp ../Beef/LICENSES.TXT opt/BeefBuild/
cp -r ../Beef_website/Samples opt/BeefBuild/
cp -r ../Beef/IDE/mintest/ opt/BeefBuild/mintest/
cp -r ../Beef/BeefLibs/ opt/BeefBuild/BeefLibs/

#Copy dists
mkdir opt/BeefBuild/bin
cp -r ../Beef/IDE/dist/lib/ opt/BeefBuild/bin/
cp -r ../Beef/IDE/dist/llvm/ opt/BeefBuild/bin/
cp ../Beef/IDE/dist/BeefBuild opt/BeefBuild/bin/
cp ../Beef/IDE/dist/BeefBuild_d opt/BeefBuild/bin/
cp ../Beef/IDE/dist/BeefDbgVis.toml opt/BeefBuild/bin/
cp ../Beef/IDE/dist/libBeefRT.a opt/BeefBuild/bin/
cp ../Beef/IDE/dist/libBeefRT_d.a opt/BeefBuild/bin/
cp ../Beef/IDE/dist/libBeefySysLib.so opt/BeefBuild/bin/
cp ../Beef/IDE/dist/libBeefySysLib_d.so opt/BeefBuild/bin/
cp ../Beef/IDE/dist/libIDEHelper.so opt/BeefBuild/bin/
cp ../Beef/IDE/dist/libIDEHelper_d.so opt/BeefBuild/bin/
cp ../Beef/IDE/dist/Standard.dbgvis opt/BeefBuild/bin/

sed "s/..\/..\//..\//" ../Beef/IDE/dist/BeefConfig.toml >> opt/BeefBuild/bin/BeefConfig.toml

