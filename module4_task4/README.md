## Lifecycle

- **go-build**: Builds the API binary file using go
- **hugo-build**: Builds a website using gohugo on the dist folder
- **post** : Generate the website from the markdown and configuration files in
the directory `dist/`.
- **check**: links on markdowns using markdownlint-cli and markdown-link-check
- **build** : Cleanup the content of the directory `dist/`
- **run**: Runs the built binary and send everything to awesome.log
- **stop**: Terminates the execution of awesome-api
- **test**: Tests API using go test
- **clean** : Create a new blog post whose filename and title come from the
environment variables `POST_TITLE` and `POST_NAME`.
- **package** : Create a file named awesome-website.zip
- **lint** : Updated to lint the files README.md and DEPLOY.md with markdownlint
- **unit-tests** : Create Uni-test
- **integration-tests** : Integration-tests (No found)
- **validate** : Validate (No found)
- **help** : Prints out the list of targets and their usage.
- **build-docker**: Builds a Docker image from Dockerfile on build directory
- **docker-tests**: Test the generated docker image using container-structure-test and cst.yml config file

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