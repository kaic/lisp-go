# Lisp-Go Development Guide

Based on the book <https://buildyourownlisp.com/contents>, implementing a LISP interpreter in C.

## Quick Commands

- `make repl` or `make run` - Start REPL
- `make build` - Compile binary
- `make install` - Install globally
- `make test` - Run tests
- `make lint` - Run linter
- `make lint-fix` - Run linter with auto-fix

## Implemented Structure ✅

- [x] Go module with proper GitHub path
- [x] Standard Go project directory structure
- [x] Binary in cmd/lispg/main.go
- [x] Makefile with easy commands
- [x] Go linter configuration (golangci-lint)
- [x] All project directories created

## Implementation Roadmap

### Milestone 1 — Tokenizer (10 min)

- [ ] Create pkg/lexer/lexer.go
- [ ] Define token types (LPAREN, RPAREN, SYMBOL, NUMBER, STRING)
- [ ] Implement basic tokenization function
- [ ] Unit tests for lexer

### Milestone 2 — Parser (15 min)

- [ ] Create pkg/parser/parser.go
- [ ] Define AST (Abstract Syntax Tree)
- [ ] Recursive parser for S-expressions
- [ ] Parsing error handling
- [ ] Tests for valid/invalid cases

### Milestone 3 — Basic Evaluator (20 min)

- [ ] Create pkg/evaluator/evaluator.go
- [ ] Implement basic arithmetic expression evaluation
- [ ] Operators: +, -, *, /
- [ ] Support for integers/floats
- [ ] Basic environment for variables

### Milestone 4 — Interactive REPL (10 min)

- [ ] Implement Read-Eval-Print loop
- [ ] Command history
- [ ] Handle ctrl+c/ctrl+d
- [ ] Pretty printing of results
- [ ] Friendly error messages

### Milestone 5 — Data Structures (15 min)

- [ ] Implement linked lists
- [ ] Functions car, cdr, cons
- [ ] nil/empty list
- [ ] Predicates: atom?, list?, null?

### Milestone 6 — Functions and Closures (20 min)

- [ ] Function definition: (define (func args) body)
- [ ] Function application
- [ ] Closures and lexical scoping
- [ ] Anonymous functions (lambda)

### Milestone 7 — Control Flow (15 min)

- [ ] if/else conditionals
- [ ] Comparison operators: =, <, >, <=, >=
- [ ] Logical operators: and, or, not
- [ ] Boolean expressions

### Milestone 8 — Advanced Features (30 min)

- [ ] Recursion and tail call optimization
- [ ] let/let* for local binding
- [ ] quote/unquote
- [ ] Basic macros
- [ ] Higher-order functions (map, filter, reduce)

### Milestone 9 — Standard Library (20 min)

- [ ] Mathematical functions (abs, sqrt, etc)
- [ ] String manipulation
- [ ] Basic I/O (read-file, write-file)
- [ ] List functions (length, append, reverse)

### Milestone 10 — Polish (15 min)

- [ ] Better error handling
- [ ] Builtin function documentation
- [ ] Code examples
- [ ] Performance optimizations

## Main Files

```
cmd/lispg/main.go          # Entry point
pkg/lexer/lexer.go         # Tokenization
pkg/parser/parser.go       # Parsing to AST
pkg/evaluator/evaluator.go # Expression evaluation
pkg/types/types.go         # Lisp data types
pkg/builtins/builtins.go   # Built-in functions
internal/repl/repl.go      # Interactive REPL
```

## Final Usage Example

```lisp
> (define factorial (lambda (n) (if (<= n 1) 1 (* n (factorial (- n 1))))))
> (factorial 5)
120
> (map (lambda (x) (* x x)) '(1 2 3 4 5))
(1 4 9 16 25)
```

## Based on buildyourownlisp.com

Implementation inspired by the book/article to learn C, LISP, Go and parsing fundamentals.

## Development Rules

- Explain every Go command before running it and what it does
- Always keep the README updated with useful information, important features added and TODOs - can add a docs section to better explain each concept with links
- Always keep this file updated with milestone progress and evolution, always explain everything being done (differences between C and Go, LISP implementation fundamentals, VSCode with Vim usage, etc)
