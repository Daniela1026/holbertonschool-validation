build: ## Generate the website from the markdown and configuration files in the directory dist/.
	hugo

clean: ## Cleanup the content of the directory dist/
	rm -r dist/*

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## prints out the list of targets and their usage.
	cat Makefile | grep "##" | tr -d '##'

lint: ## lint the files README.md and DEPLOY.md with markdownlint command line
	yamllint "$(SHELLCHECK)" setup.sh >/dev/null 2>&1 || echo "Lint Failed"
	markdownlint README.md DEPLOY.md

package: ## produces a file awesome-website.zip, containing the binary awesome-api and the directory dist/ directory
	make build
	zip awesome-website.zip dist/

unit-tests: ## ERROR: No mention of target unit-tests found in ./README.md

integration-tests: ## ERROR: No comment found for target integration-tests in ./Makefile

validate: ## ERROR: No comment found for target validate in ./Makefile
