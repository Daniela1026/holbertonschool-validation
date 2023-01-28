# **Introduction to DevOps\_\_Automate everything to Focus on what really matters**

## **LEARNINGS**

- Understand the value of automating tedious tasks
- Define a development lifecycle
- Automate shell-like tasks with Make, and/or shell script
- Be aware of tools dependencies and the value of reproducing environment
- Build static HTML website from Markdown code using Go-Hugo

## **Prerequisites**

- Install Go-Hugo to produce a valid Go-Hugo Website
- No Git Submodules allowed
- No directory `dist/` committed
- A Ubuntu system
- Usage of a Makefile to ease Lifecycle
- The website created has to use the theme 'ananke'

## **Lifecycle**

- build: Generate the website from the markdown and configuration files
  in the directory `dist/`.
- clean: Cleanup the content of the directory `dist/`
- post: Create a new blog post whose filename and title come from the
  environment variables `POST_TITLE` and `POST_NAME`.
- help: Display the documentation of all targets
- unit-tests: Runs several make command, expected correct output
- integration-tests: runs post and build to check for proper integration of new posts
- validate: validate that we are in the correct folder
- package: compress archive `awesome-website.zip`

## **HELP Workflow**

- Triggering the workflow, each time new code is pushed to the repo,
  or at least once per day.
- In this directory, we're going to configure automatic actions
  to be performed when something happen to the repository.
- Using Github Actions to ensure CI/CL pipeline
  (build starts, TEST, BUILD, PUSH, DEPLOY)

==> help workflow test that help gets displayed

## **BUILD Workflow**

Fixing code in order to make the build command valid with github actions
