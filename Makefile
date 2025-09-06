.PHONY: repl run build clean

# Easy REPL command
repl:
	go run ./cmd/lispg

run: repl

# Build binary
build:
	go build -o bin/lispg ./cmd/lispg

# Clean build artifacts
clean:
	rm -rf bin/

# Install globally
install:
	go install ./cmd/lispg

# Development commands
dev:
	go run ./cmd/lispg

test:
	go test ./...