# Welcome to Awesome Inc

## Prerequisites

- **Same requirements as the previous task:**

* GoHugo on latest version
* GNU Make on latest version
* Same tools as previous module
* Golang in v1.15.*
* NPM v7+ with NodeJS v14.* (stable)
* Python 3 with pip module

  - These comments should be written on the same line as the targets
  - Each comment should start with two characters  `#`

## Lifecycle

* go-build: Builds the API binary file using go
* hugo-build: Builds a website using gohugo on the dist folder
* build: Builds a website using gohugo on the dist folder
* clean: Cleans the dist folder
* post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
* check:   Lints and check for dead links on markdowns using markdownlint-cli and markdown-link-check
* validate:  Validates dist/index.html using W3C Hbtn validator
* help: Shows this help
* run: Runs the built binary and send everything to awesome.log 
* stop: Terminates the execution of awesome-api
* test: Tests API using go test
* lint: Lints all the go files using golangci-lint 
* unit-tests: Runs implemented unit test using go test
* integration-tests: Runs integration test using go test help: Show this help message
* package: Generates a zip archive to deployment 
* build-docker: Builds a Docker image from Dockerfile on build directory 
* docker-tests: Test the generated docker image using container-structure-test and cst.yml config file

## Workflow

- The original workflow file <...>/.github/workflows/module3_task0.yml must be:
  - Present with a valid YAML syntax
  - It must be a valid GitHub action workflow with 1 job and 2 steps
  - It must be have 2 triggers

## Build Workflow

- Workflows Steps
  - Uses Checkout
  - Run bash script
  - Run make build
  - Run make target package
  - Run make target lint
  - Run unit-Test
  - Run validate
  - Uses production artifacts
  - Uses Release task 3