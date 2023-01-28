#make file - Development Lifecycle with Makefile
.PHONY: ## build clean post

build: ## comment
	hugo
	touch awesome-api

clean: ## cleans up package an build
	rm -r dist/*
	rm -r awesome-website.zip

post: ## comment
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## comment
	cat Makefile | grep "##" | tr -d '##'


package: ## This command line download a zip archive to zip.
	make build
	zip awesome-website.zip dist/

lint: ## setup check
	markdownlint README.md
	markdownlint DEPLOY.md

unit-tests: ## test not working
	echo "make integration-tests"
	echo "make validate"
	touch coverage-units.out

integration-tests: ## test not working
	touch coverage-integrations.out