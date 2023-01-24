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
*unit-tests:
*integration-tests:
*validate: