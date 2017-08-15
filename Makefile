GOFILES = $(shell find . -name '*.go' -not -path './rv-go-helloworld-heroku/*')
GOPACKAGES = $(shell go list ./...  | grep -v /rv-go-helloworld-heroku/)

default: build

workdir:
	mkdir -p workdir

build: workdir/contacts

build-native: $(GOFILES)
	go build -o workdir/native-contacts .

workdir/contacts: $(GOFILES)
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o workdir/contacts .

test: test-all

test-all:
	@go test -v $(GOPACKAGES)
