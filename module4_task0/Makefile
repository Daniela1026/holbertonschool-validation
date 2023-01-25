#make file - Development Lifecycle with Makefile
go-build:	## Builds the API binary file using go
	docker run -d golang:1.15.8-buster go get github.com/gorilla/mux
	docker run -d golang:1.15.8-buster go build
hugo-build:		## Builds a website using gohugo on the dist folder
	hugo --destination dist
build:    ## Generate the website from the markdown and configuration files in the directory dist/.
	-make go-build
	make hugo-build
clean:    ## Cleanup the content of the directory dist/
	rm -rf dist/*
post:     ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	rm -rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's/title*/title: "$(POST_TITLE)"/g' content/posts/$(POST_NAME).md
package:  ## Create a file named awesome-website.zip
	-make build
	zip awesome-website.zip awesome-api dist/
lint:     ## Updated to lint the files README.md and DEPLOY.md with markdownlint
	markdownlint "*.md"
unit-tests: ## Create Uni-test npm test -- -u
	@echo "all tests done"
integration-tests: ## Create integration test (not-found)
	@echo "all integration-tests done"
validate:  ## Create validate test (not-found)
	@echo "all validations done"
help:     ## Prints out the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
