export GO111MODULE=on

all: build

.PHONY: build
build:
	$(GO_OS_ARCH) CGO_ENABLED=0 go build -o bin/server
