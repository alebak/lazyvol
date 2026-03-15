.PHONY: build run test unit-test lint format clean

# Build binary
build:
	go build -o lazyvol .

# Build and run
run: build
	./lazyvol

# Unit tests only (fast)
unit-test:
	go test ./pkg/... -short

# All tests including integration (requires Docker)
test: unit-test
	go test -tags integration ./test/integration/...

# Lint
lint:
	golangci-lint run

# Format
format:
	gofmt -l -w .

# Clean binary
clean:
	rm -f lazyvol