#make file - Development Lifecycle with Makefile
go-build:	## Builds the API binary file using go
	docker run --rm --volume=$(shell pwd):/app --workdir=/app golang:1.15.8-buster /bin/bash -c "go mod init github.com/Apinedas/awesome-api && go get github.com/gorilla/mux && go build"

hugo-build:		## Builds a website using gohugo on the dist folder
	hugo

build:	## Builds all that is needed for website
	-make go-build
	make hugo-build

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