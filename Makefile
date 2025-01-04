# Makefile
# Simplified from https://www.alexedwards.net/blog/a-time-saving-makefile-for-your-go-projects
# 

# Change these variables as necessary.
main_package_path = ./
binary_name = weather

# ==================================================================================== #
# HELPERS
# ==================================================================================== #

## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

# ==================================================================================== #
# DEVELOPMENT
# ==================================================================================== #

## tidy: tidy modfiles and format .go files
.PHONY: tidy
tidy:
	go mod tidy -v
	go fmt ./...

## build: build the application
.PHONY: build
build:
	go build -o=/tmp/bin/${binary_name} ${main_package_path}

## run: run the  application
.PHONY: run
run: build
	/tmp/bin/${binary_name}
