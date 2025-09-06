.PHONY: repl run build clean lint test

# Easy REPL command - runs linter first
repl: lint
	go run ./cmd/lispg

run: repl

# Build binary - runs linter first
build: lint
	mkdir -p bin
	go build -o bin/lispg ./cmd/lispg

# Clean build artifacts
clean:
	rm -rf bin/

# Install globally - runs linter first
install: lint
	go install ./cmd/lispg

# Development commands - runs linter first
dev: lint
	go run ./cmd/lispg

test: lint
	go test ./...

# Linting
lint:
	go vet ./...
	go fmt ./...

lint-advanced:
	golangci-lint run

lint-fix:
	golangci-lint run --fix