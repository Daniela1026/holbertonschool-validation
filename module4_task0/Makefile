#make file - Development Lifecycle with Makefile
go-build:	## Builds the API binary file using go
	docker run --rm --volume=$(shell pwd):/app --workdir=/app golang:1.15.8-buster /bin/bash -c "go mod init github.com/Daniela1026/awesome-api && go get github.com/gorilla/mux && go build"

hugo-build:		## Builds a website using gohugo on the dist folder
	hugo --destination dist

build:	## Builds all that is needed for website
	-make go-build
	make hugo-build
clean:    ## Cleanup the content of the directory dist/
	rm -rf dist/*
post:     ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
package:  ## Create a file named awesome-website.zip
	hugo
	zip -r awesome-website.zip dist/
lint:     ## Updated to lint the files README.md and DEPLOY.md with markdownlint
	markdownlint README.md DEPLOY.md
unit-tests: ## Create Uni-test npm test -- -u
	@echo "running unit tests"
	touch coverage-units.out
integration-tests: ## Create integration test (not-found)
	@echo "running integration tests"
	touch coverage-integrations.out
validate:  ## Create validate test (not-found)

help:     ## Prints out the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
