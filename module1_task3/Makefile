#publish hugo

build: ## This command build the site.
	@hugo

clean: ## This command line delete the specified file.
	rm -rf dist

post: ## This command line create a new post, the sed comment modified the file's content.
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help:  ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'