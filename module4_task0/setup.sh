#!/usr/bin/env bash
apt-get update && apt-get install -y make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz
tar -xvf hugo_extended_0.109.0_Linux-64bit.tar.gz hugo
mv hugo /usr/local/bin/
rm -f hugo_extended_0.109.0_Linux-64bit.tar.gz || true

apt-get install zip -y
npm install -g markdownlint-cli -y

make build

sudo apt-get remove golang-go
rm -rf /usr/local/go || true

rm -rf dist/ 2> /dev/null
rm -f awesome-api || true
rm -f coverage-units.out || true
rm -f coverage-integrations.out || true