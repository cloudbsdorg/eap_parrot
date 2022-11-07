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
	# Make sure the configuration directory exists
	@mkdir -p $(CONFIG_TARGET)
	# Copy the bin to the proper directory
	@cp bin/eap_parrot $(BIN_TARGET)
	# Copy the base configuration to the proper directory
	@cp config.toml $(CONFIG_TARGET)
	# Copy the FreeBSD init script
	@cp init/FreeBSD/eap_parrot $(RC_TARGET)
	# Copy the man page(s)
	@cp man/man1/eap_parrot.1.gz $(MAN_TARGET)