#!/usr/bin/env bash
sudo apt-get install -y apt-utils
curl -L https://github.com/gohugoio/hugo/releases/download/v0.91.2/hugo_0.91.2_Linux-64bit.deb -o hugo.deb
sudo apt install ./hugo.deb
npm install -g markdownlint-cli
rm hugo.deb