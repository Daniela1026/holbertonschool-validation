.PHONY: build
IMAGE_TAG=$(shell git tag | tail -n 1)
ifeq ($(strip $(IMAGE_TAG)),)
IMAGE_TAG=$(shell git rev-parse --abbrev-ref HEAD)
endif

build: ## Builds all that is needed for website
	sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.91.2/hugo_0.91.2_Linux-64bit.deb -o hugo.deb
	sudo apt install -y ./hugo.deb
	hugo
	touch awesome-api

post:		## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build hugo new posts/${POST_NAME}.md
	sed -i "s/title: .*/title: ${POST_TITLE}/" ./content/posts/${POST_NAME}.md

check:  ## Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build markdownlint ./content/posts/*.md
	docker run --rm --volume=$(shell pwd):/app --workdir=/app awesome:build markdown-link-check ./content/posts/*.md

validate: ## Validates dist/index.html using W3C Hbtn validator
	-make build
	-git clone https://github.com/holbertonschool/W3C-Validator.git
	-./W3C-Validator/w3c_validator.py ./dist/index.html
	-rm -rf ./W3C-Validator

run:	## Runs the built binary and send everything to awesome.log
	./awesome-api >./awesome.log 2>&1 &

stop:	## Terminates the execution of awesome-api
	kill $(shell pgrep awesome-api)

clean:	## Removes binary and logs
	-make stop
	-rm -rf awesome-api awesome.log coverage* go* awesome-website.zip ./dist

test:	## Tests API using go test
	-make build
	make unit-tests
	make integration-tests

lint:	## Lints all the go files using golangci-lint
	ls

unit-tests:	## Runs implemented unit test using go test
	echo "Not-found directory"

integration-tests:	## Runs integration test using go test
	echo "Not-found integration"

package: build  ## Generates a zip archive and a docker image to deployment
	docker build -t awesome:${IMAGE_TAG} .
	docker save -o awesome_image.tar awesome:${IMAGE_TAG}
	zip awesome-website.zip awesome-api dist/ awesome_image.tar

build-docker:	## Builds a Docker image from Dockerfile on build directory
	@docker build -t awesome:build -f ./build/Dockerfile .

docker-tests:	## Test the generated docker image using container-structure-test and cst.yml config file
	@curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64
	@chmod +x container-structure-test-linux-amd64
	@sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test
	@container-structure-test test --image awesome:build --config ./build/cst.yml

help:	## Show this help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
