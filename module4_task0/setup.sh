#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install -y make golang-go git curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugoversion.deb
sudo apt install ./hugoversion.deb
sudo snap install golangci-lint
sudo gem install chef-utils -v 16.6.14
sudo npm install -g markdownlint-cli
sudo gem install mdl -v 0.11.0