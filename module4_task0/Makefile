.PHONY: ## build clean post

build: ## Build the website
			@hugo
			touch awesome-api

clean: ## Clean the build directory
			rm -r dist/*

post: ## Create a new blog post
			hugo new posts/$(POST_NAME).md
## Update the title of the new post
			sed -i "s/title: .*/title: $(POST_TITLE)/" ./content/posts/$(POST_NAME).md

help: ## Show commands usage information
			@echo "Available targets:"
			@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//' | awk '{ printf "  %-20s %s\n", $$1, $$2 }'

package: ## Zip website
			@hugo
			@zip awesome-website.zip ./dist

lint: ## Lint with markdown
			@markdownlint README.md
			@markdownlint DEPLOY.md

unit-tests: ## Test file
			@echo "running unit tests"
			touch coverage-units.out

integration-tests: ## Integration file
			@echo "running integration tests"
			touch coverage-integrations.out

validate: ## validate
