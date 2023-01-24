help: ## Build: Generate the website from the markdown and configuration files in the directory dist/.
	@sed -ne '/@sed/!s/## //p' Makefile

build: ## Cleanup the content of the directory dist/
	@hugo

clean: ## Post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	@rm -rf dist/*

post: ## prints out the list of targets and their usage.
	@hugo new ./content/posts/$(POST_NAME).md
	@sed -i '/title:*/c\title: "$(POST_TITLE)"' ./content/posts/$(POST_NAME).md

package: ##  implemented and documented. It should create a file named awesome-website.zip 
	@hugo
	@zip awesome-website.zip ./dist

lint: ##  updated to lint the files README.md and DEPLOY.md with markdownlint command line
	@markdownlint README.md
	@markdownlint DEPLOY.md

unit-tests: ## run unitest


integration-tests: ## run integration test


validate: ## run validate