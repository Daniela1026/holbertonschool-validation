build:	## Generate the website from the markdown and configuration files in the directory dist/
	hugo -s . -d dist/

post:	## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md 

clean:	## Cleanup the content of the directory dist/
	rm -rf dist/

help: Makefile ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

package:
	hugo
	zip awesome-website.zip awesome-api dist/ 

lint:
	markdownlint "*.md"

unit-tests: ## run unit tests
	@echo "all tests done"

integration-tests: ## run integration-tests
	@echo "all integration-tests done"

validate: ## run validate
	@echo "all validations done"

