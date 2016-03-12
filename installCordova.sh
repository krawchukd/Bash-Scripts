#!/bin/bash
# Usage: sh -x installCordova.sh {version number}

# grab version passed in as argument
version=$1

# grab current working directory
initial_working_dir=$(pwd)

# Uninstall Cordova
sudo npm -g uninstall cordova
sudo npm uninstall cordova

# Install Cordova with version passed in
sudo npm -g install cordova@$version

# Install missing hello world directory for Cordova 5.3.3
if [ $version == "5.3.3" ]; then
cd /usr/local/lib/node_modules/cordova/node_modules/cordova-lib
sudo npm install
fi

# Return to the original working direcotry
cd $initial_working_dir
