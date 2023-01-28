# Prerequisites

Before you begin this tutorial you must:

    Install Hugo
    Install Git

## Requirements

    Use the theme “ananke” for the website by following the section Note for
    non-git users at the
    Step 3 Usage of Git Submodules is prohibited: there should be no file
    .gitmodules.
    The website title should be “Awesome Inc.”
    The contents consists in a single blog post which title should be “Welcome
    to Awesome Inc.”, stored in a file named welcome.md
    All of the website’s source code is stored under a directory named
    module1_task0
    The command line hugo in version 0.84.0 must be used
    The website is expected to be generated into the directory
    module1_task0/dist/
    The directory module1_task0/dist/ must not be committed (it should be
    absent from the repository) Here is a simple example of the expected
    generation process:

## Lifecycle

go-build: Builds the API binary file using go
hugo-build: Builds a website using gohugo on the dist folder
build:   Builds all that is needed for website
post: Create a new blog post whose filename and title come from the environment
variables POST_TITLE and POST_NAME
check:   Lints and check for dead links on markdowns using markdownlint-cli and
markdown-link-check
validate:  Validates dist/index.html using W3C Hbtn validator
run:     Runs the built binary and send everything to awesome.log
stop:    Terminates the execution of awesome-api
clean:   Removes binary and logs
test:    Tests API using go test
lint:    Lints all the go files using golangci-lint
unit-tests:      Runs implemented unit test using go test
integration-tests:       Runs integration test using go test
help:    Show this help message
