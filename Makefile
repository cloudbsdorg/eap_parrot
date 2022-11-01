default: all

all: build

build:
	@go get
	@go install
	@go build -o bin/eap_parrot

clean:
	@rm -rf bin
	@go clean

