build:	## Compile the source code
	make lint
	go build

run:	## background by executing
	./awesome-api >./awesome.log 2>&1 &

stop:	## Stop the application
	kill $(shell pgrep awesome-api)

clean:	## Delete awesome-api
	-make stop
	-rm ./awesome-api awesome.log coverage*

test:	## Test the application
	make unit-tests
	make integration-tests

lint:	## Lints all the go files using golangci-lint
	golangci-lint run

unit-tests:	## Test using in go tests
	go test -v -short -coverprofile=coverage-units.out

integration-tests:	## Print the differents commands
	go test -v -coverprofile=coverage-integrations.out

help:	## Show this help message
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
