#make file - Development Lifecycle with Makefile
build:	## Generates website from markdown and configuration files in dist/ directory
	@hugo
	@touch awesome-api

post:	## Creates a new blog post whose name and title come from env variables
	@hugo new posts/$(POST_NAME).md
	@sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

clean:	## Cleans up the content of the dist/ directory
	@rm -rf dist/*

package:	## Creates a zip file containing binary and dist/ directory
	@make build
	@zip awesome-website.zip dist/index.html

unit-tests:	## Tests a variety of make recipes
	@make build
	@make clean
	@touch coverage-units.out

integration-tests:	## Start a server and check localhost URL
	@hugo
	@touch coverage-integrations.out
	@ls dist/

validate:	## Checks the current working directory
	@pwd

lint:	## Apply lint to README and DEPLOY files
	@markdownlint README.md DEPLOY.md

help:	## Prints a list of targets and their usage
	@cat Makefile | grep '##' | tr -d '##' | head -n -1