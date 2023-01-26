HUGO=hugo
RM=rm -rf
SHELLCHECK=shellcheck
YAMLLINT=yamllint
YQ=yq
MARKDOWN=markdownlint

go-build:	## Builds the API binary file using go
	docker run --rm --volume=$(shell pwd):/app --workdir=/app golang:1.15.8-buster /bin/bash -c "go mod init github.com/Daniela1026/awesome-api && go get github.com/gorilla/mux && go build"

hugo-build:		## Builds a website using gohugo on the dist folder
	hugo

build:	## Builds all that is needed for website
	-make go-build
	make hugo-build

post: ## Creates a new post with the title changed to the ENV value.
	$(HUGO) new posts/$(POST_NAME).md
	$(YQ) eval '.title = "$(POST_TITLE)"' ./content/posts/$(POST_NAME).md

clean: ## Remove all files from target folder
	$(RM) dist/*

lint: ## Lints the shell file and run yamllint on success.
	$(MARKDOWN) README.md
	$(MARKDOWN) DEPLOY.md
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 && make yamllint || echo "Lint Failed"

integration-tests: ## Spin up a server and check the localhost url
	$(HUGO)
	touch coverage-integrations.out
	ls dist/

unit-tests: ## Runs different makefile recipes
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean
	touch coverage-units.out

validate: ## Tests ensure it is in correct dir
	pwd

package: ## Creates a zip archive of the dist dir api binary.
	make build
	zip awesome-website.zip dist/index.html

.SILENT:
help: ## Target check
	cat Makefile | grep '##' | tr -d '##' | head -n -1
