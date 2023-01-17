#!/bin/bash
apt-get update && apt-get install -y make golang-go git curl
curl -L install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugoversion.deb
apt install ./hugoversion.deb
npm install -g markdownlint-cli

