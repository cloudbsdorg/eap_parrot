default: all

BIN_TARGET=/usr/local/bin/
CONFIG_TARGET=/usr/local/etc/eap_parrot/
RC_TARGET=/usr/local/etc/rc.d/
MAN_TARGET=/usr/local/man/man1/

all: clean build

build:
	@go get
	@go install
	@go build -o bin/eap_parrot
	@gzip man/man1/eap_parrot.1

clean:
	@rm -rf bin
	@rm man/man1/eap_parrot.1.gz
	@go clean

install:
	@mkdir -p $(BIN_TARGET) $(CONFIG_TARGET)
	@cp bin/eap_parrot $(BIN_TARGET)
	@cp *.toml $(CONFIG_TARGET)
	@mkdir -p $(RC_TARGET)
	@cp init/FreeBSD/* $(RC_TARGET)
	@cp man/man1/* $(MAN_TARGET)