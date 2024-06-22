.PHONY: addpkg install run build

# Default app name, can be overridden with `make build APP_NAME=myapp`
APP_NAME ?= amazing_app

# Add a Go package on demand. Usage: make addpkg PKG=github.com/example/package
addpkg:
	go get $(PKG)

# Install missing dependencies. Go mod download will download the missing dependencies.
install:
	go mod download

# Run the app in development mode. Assumes your entry point is main.go.
run:
	go run src/main.go

# Build the app. Outputs the binary to the ./dist directory.
build:
	go build -o dist/$(APP_NAME) src/main.go

# Deploy the built app to /usr/local/bin directory
deploy: build
	sudo mv dist/$(APP_NAME) /usr/local/bin/$(APP_NAME)

# Combine build and deploy operations
build_and_deploy: deploy
