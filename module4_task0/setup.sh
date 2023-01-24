#!/bin/bash
rm -rf /usr/local/go
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb
apt install ./last.deb
rm last.deb