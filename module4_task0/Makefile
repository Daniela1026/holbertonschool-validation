#make file - Development Lifecycle with Makefile
build:	## Builds all that is needed for website
	hugo
	touch awesome-api
clean:    ## Cleanup the content of the directory dist/
	rm -rf dist/*
post:     ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
package:  ## Create a file named awesome-website.zip
	hugo
	zip awesome-website.zip awesome-api dist/ 
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
