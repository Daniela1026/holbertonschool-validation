help: ## Build: Generate the website from the markdown and configuration files in the directory dist/.
	@sed -ne '/@sed/!s/## //p' Makefile

go-build:	## Builds the API binary file using go
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build /bin/bash -c "go mod init github.com/Apinedas/awesome-api && go get github.com/gorilla/mux && go build"

hugo-build:		## Builds a website using gohugo on the dist folder
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build hugo

build:	## Builds all that is needed for website
	-make go-build
	make hugo-build

clean: ## Post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	@rm -rf dist/*

post: ## prints out the list of targets and their usage.
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build hugo new posts/${POST_NAME}.md
	sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/posts/${POST_NAME}.md

package: ##  implemented and documented. It should create a file named awesome-website.zip 
	-make build
	zip awesome-website.zip awesome-api dist/

lint: ##  updated to lint the files README.md and DEPLOY.md with markdownlint command line
	@markdownlint README.md
	@markdownlint DEPLOY.md

unit-tests: ## run unitest
	@echo "running unit tests"
	touch coverage-units.out


integration-tests: ## run integration test
	@echo "running integration tests"
	touch coverage-integrations.out


validate: ## run validate