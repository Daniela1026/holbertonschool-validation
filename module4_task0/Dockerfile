FROM golang:1.19
WORKDIR /usr/src/app

RUN go mod init ./dist/
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .
RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]