build: ## Compile the source code
		make lint
		go build

run: ## background by executing
		./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the application
		kill $(shell pgrep awesome-api) 2>&1 &

clean: ## Delete awesome-api
		-rm -r awesome.log
		-rm -r awesome-api
		-rm go.mod
		-rm go.sum

test: ## Test the application
		curl http://localhost:9999
		curl http://localhost:9999/health

lint:	## Lints all the go files
        golangci-lint run

help: ## Print the differents commands
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'