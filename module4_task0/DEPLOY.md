# **DEPLOYMENT DOCUMENT FOR MY DEAR TEAMMATES**

## - What is in the archive and how to unarchive it?\*

In the archive is compressed the binary awesome-api.zip and the dist directory.

## - What are the commands to start and stop the application?

Use go-hugo server, just type `hugo server`

## - How to customize where the application logs are written?

Very good question dude !!

## - How to “quickly” verify that the application is running (healthcheck)?

Check it out on local host

## Releases

New release is created with the awesome-website.zip archive,
pointing to the tag 1.0.0

## Release Drafter

Automate the creation of a changelog for the release,
based on the merge pull request title

## Release on Netlify

When workflow gets triggered by Pull Request,
deploy step done on a preview site
automatically provides the preview site's URL
