#make file - Development Lifecycle with Makefile
build:    ## Generate the website from the markdown and configuration files in the directory dist/.
	hugo
	touch awesome-api
clean:    ## Cleanup the content of the directory dist/
	rm -rf dist/*
post:     ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	rm -Rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	sed -i 's/draft:.*/draft: "false"/' content/posts/$(POST_NAME).md
package:  ## Create a file named awesome-website.zip
	hugo
	zip -r awesome-website.zip dist/
lint:     ## Updated to lint the files README.md and DEPLOY.md with markdownlint
	markdownlint README.md DEPLOY.md
unit-tests: ## Create Uni-test npm test -- -u
	touch coverage-units.out
integration-tests: ## Create integration test (not-found)
	touch coverage-integrations.out
validate:  ## Create validate test (not-found)

help:     ## Prints out the list of targets and their usage
	@echo "Usage: make <command>"
	@echo "-----"
	@fgrep -h "##" Makefile | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | head -9
