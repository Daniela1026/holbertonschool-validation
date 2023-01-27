#make file - Development Lifecycle with Makefile
build:    ## Generate the website from the markdown and configuration files in the directory dist/.
	hugo
build-docker:	## Builds a Docker image from Dockerfile on build directory
	docker build -t awesome:build ./build
clean:    ## Cleanup the content of the directory dist/
	rm -rf dist/*
post:     ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	rm -rf content/posts/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	perl -p -i -e "s[title*.*][title: "'"'"$(POST_TITLE)"'"'"]g" content/posts/$(POST_NAME).md
check:  ## Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build markdownlint ./content/posts/*.md
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build markdown-link-check ./content/posts/*.md
package:  ## Create a file named awesome-website.zip
	hugo
	zip -r awesome-website.zip awesome-api dist/
lint:     ## Updated to lint the files README.md and DEPLOY.md with markdownlint
	markdownlint "*.md"
test:	## Tests API using go test
	-make build
	make unit-tests
	make integration-tests
run:	## Runs the built binary and send everything to awesome.log
	./awesome-api >./awesome.log 2>&1 &
stop:	## Terminates the execution of awesome-api
	kill $(shell pgrep awesome-api)
unit-tests:	## Runs implemented unit test using go test
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build go test -v -short -coverprofile=coverage-units.out
integration-tests:	## Runs integration test using go test
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build go test -v -coverprofile=coverage-integrations.out
validate: ## Validates dist/index.html using W3C Hbtn validator
	-make build
	-git clone https://github.com/holbertonschool/W3C-Validator.git
	-./W3C-Validator/w3c_validator.py ./dist/index.html
	-rm -rf ./W3C-Validator
help:     ## Prints out the list of targets and their usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
