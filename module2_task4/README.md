# GoHugo introduction

* On this repo you'll find an introduction site to goHugo

# Prerequisites

* GoHugo on latest version
* GNU Make on latest version
* Same tools as previous module
* Golang in v1.15.*
* NPM v7+ with NodeJS v14.* (stable)
* Python 3 with pip module

# Lifecycle

* build: Builds a website using gohugo on the dist folder
* clean: Cleans the dist folder
* post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
* check:   Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
* validate:  Validates dist/index.html using W3C Hbtn validator
* help: Shows this help