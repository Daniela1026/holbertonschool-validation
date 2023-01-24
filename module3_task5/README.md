## Prerequisites
* A Valid Go-Hugo website is provided
* There are no Git Submodules
* The theme ananke is installed
* No directory dist/ committed
* Makefile present
* Add comments in the Makefile to describe what each target is expected to do
* These comments should be written on the same line as the targets 
* Each comment should start with two characters #

## Lifecycle
*build: Generate the website from the markdown and configuration files in the directory dist/
*post: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
*clean: Cleanup the content of the directory dist/
*help: Show this help usage
*lint: updated to lint the files README.md and DEPLOY.md
*package: creates a file named awesome-website.zip
*unit-tests: Create Uni-test
*integration-tests: Integration-tests (No found)
*validate: Validate (No found)
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
