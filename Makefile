default: all

UNAME_S=$$(exec uname -s)
UNAME_P=$$(exec uname -p)
SHELL_ENV=$$SHELL
BIN_TARGET=/usr/local/bin/
CONFIG_TARGET=/usr/local/etc/eap_parrot/
RC_TARGET=/usr/local/etc/rc.d/

all: clean build

build:
	go get
	go install
	go build -o bin/eap_parrot

clean:
	@rm -rf bin
	@go clean

install:
	@mkdir -p $(BIN_TARGET) $(CONFIG_TARGET)
	@cp bin/eap_parrot $(BIN_TARGET)
	@cp *.toml $(CONFIG_TARGET)
	@mkdir -p $(RC_TARGET)
	@cp init/FreeBSD/* $(RC_TARGET)
	@cp man/FreeBSD/man1/eap_parrot.1 /usr/local/share/man/