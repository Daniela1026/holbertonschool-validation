#!/bin/bash

# Install appropriate version of hugo to be run in docker container 'ubuntu 18.04'
apt-get update && apt-get install -y make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.deb
sudo dpkg -i hugo_extended_0.84.0_Linux-64bit.deb

# Install markdownlint and zip tools
apt-get install zip
npm install -g markdownlint-cli -y

# Uninstall go
sudo apt-get remove golang-go
rm -rf /usr/local/go || true


# clean enviroment file and directory
rm -rf dist/ 2> /dev/null
rm -f awesome-api || true
rm -f coverage-units.out || true
rm -f coverage-integrations.out || true
