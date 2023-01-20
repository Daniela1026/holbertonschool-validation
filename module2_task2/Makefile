build: ## Compile the source code
		make lint
		go build

run: ## background by executing
		./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the application
		kill $(shell pgrep awesome-api)

clean: ## Delete awesome-api
		-make stop
		-rm ./awesome-api awesome.log

test: ## Test the application
		curl http://localhost:9999
		curl http://localhost:9999/health

lint:	## Lints all the go files using golangci-lint
	golangci-lint run

unit-tests: ## Test using in go tests
		go test -v -short -coverprofile=coverage-units.out

help: ## Print the differents commands
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'