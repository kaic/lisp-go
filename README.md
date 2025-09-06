# Lisp-Go

A Lisp interpreter implemented in Go, based on [Build Your Own Lisp](https://buildyourownlisp.com/contents).

## Features

- [x] **Project Structure**: Standard Go directory layout
- [x] **Development Tools**: Makefile with easy commands, linter configuration
- [ ] **Tokenizer**: Lexical analysis for Lisp syntax
- [ ] **Parser**: S-expression parsing to AST
- [ ] **Evaluator**: Expression evaluation with arithmetic operations
- [ ] **REPL**: Interactive Read-Eval-Print Loop
- [ ] **Data Structures**: Lists, atoms, and predicates
- [ ] **Functions**: Lambda expressions and closures
- [ ] **Control Flow**: Conditionals and logical operators
- [ ] **Standard Library**: Built-in functions and math operations

## Quick Start

### Prerequisites
- Go 1.21+
- golangci-lint (for development)

### Commands

```bash
# Start the REPL
make repl

# Build binary
make build

# Run tests
make test

# Lint code
make lint

# Install globally
make install
```

## Project Structure

```
├── cmd/lispg/           # Main application entry point
├── pkg/                 # Public library code
│   ├── lexer/          # Tokenization
│   ├── parser/         # AST parsing
│   ├── evaluator/      # Expression evaluation
│   ├── types/          # Lisp data types
│   └── builtins/       # Built-in functions
├── internal/repl/      # REPL implementation
├── docs/               # Documentation
└── tests/              # Test files
```

## Development Progress

See [CLAUDE.md](./CLAUDE.md) for detailed implementation roadmap and progress tracking.

## TODO

- [ ] Implement Milestone 1: Tokenizer
- [ ] Implement Milestone 2: Parser
- [ ] Implement Milestone 3: Basic Evaluator
- [ ] Implement Milestone 4: Interactive REPL
- [ ] Add comprehensive test suite
- [ ] Add documentation for language features
- [ ] Performance optimization
- [ ] Error handling improvements

## Learning Goals

This project aims to teach:
- **Go**: Idiomatic Go programming patterns
- **LISP**: Functional programming concepts and S-expressions  
- **Parsing**: Lexical analysis, recursive descent parsing, AST construction
- **Interpreters**: Expression evaluation, environments, closures
- **Language Design**: Syntax design, semantics, error handling

## Usage Example (Planned)

```lisp
> (define factorial (lambda (n) 
    (if (<= n 1) 
        1 
        (* n (factorial (- n 1))))))
> (factorial 5)
120
> (map (lambda (x) (* x x)) '(1 2 3 4 5))
(1 4 9 16 25)
```

## Contributing

1. Follow Go conventions and use the provided linter
2. Add tests for new features
3. Update documentation
4. Run `make lint` before submitting changes

## References

- [Build Your Own Lisp](https://buildyourownlisp.com/contents) - Primary reference
- [Go Documentation](https://golang.org/doc/) - Go language reference
- [LISP Specification](http://www.lispworks.com/documentation/) - LISP language details