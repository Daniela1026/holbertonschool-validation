#!/bin/bash

#* The applications "GoHugo" and "Make" are installed with `apt-get update && apt-get install -y hugo make`.
apt update
apt install -y git
apt install -y hugo
apt update
apt-get update && apt-get install make
apt install -y curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
apt install ./hugo.deb
