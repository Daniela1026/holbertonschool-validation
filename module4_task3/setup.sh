#!/usr/bin/env bash
npm install -g markdownlint-cli -y

sudo apt-get remove golang-go
rm -rf /usr/local/go || true

rm -rf dist/ 2> /dev/null
rm -f awesome-api || true
rm -f coverage-units.out || true
rm -f coverage-integrations.out || true