build: ## Compile the source code
		go build

run: ## background by executing
		./awesome-api >./awesome.log 2>&1 &

stop: ## Stop the application
		kill $(shell pgrep awesome-api)

clean: ## Delete awesome-api
		make stop
		rm ./awesome-api awesome.log

test: ## Test the application
		curl http://localhost:9999
		curl http://localhost:9999/health

help: ## Print the differents commands
		@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'