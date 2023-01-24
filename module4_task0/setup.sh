#!/bin/bash
apt-get update
apt-get install -y hugo make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb
dpkg -i hugo_extended_0.109.0_linux-amd64.deb
rm -f hugo_extended_0.109.0_linux-amd64.deb
