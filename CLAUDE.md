# Lisp-Go Development Guide

## Quick Commands
- `make repl` ou `make run` - Iniciar REPL
- `make build` - Compilar binário
- `make install` - Instalar globalmente
- `make test` - Rodar testes

## Estrutura Implementada ✅
- [x] Módulo Go com caminho GitHub adequado
- [x] Estrutura de diretórios padrão Go
- [x] Binário em cmd/lispg/main.go
- [x] Makefile para comandos fáceis

## Roadmap de Implementação

### Marco 1 — Tokenizer (10 min)
- [ ] Criar pkg/lexer/lexer.go
- [ ] Definir tipos de tokens (LPAREN, RPAREN, SYMBOL, NUMBER, STRING)
- [ ] Implementar função de tokenização básica
- [ ] Testes unitários para lexer

### Marco 2 — Parser (15 min)
- [ ] Criar pkg/parser/parser.go
- [ ] Definir AST (Abstract Syntax Tree)
- [ ] Parser recursivo para expressões S
- [ ] Tratamento de erros de parsing
- [ ] Testes para casos válidos/inválidos

### Marco 3 — Avaliador Básico (20 min)
- [ ] Criar pkg/evaluator/evaluator.go
- [ ] Implementar avaliação de expressões aritméticas básicas
- [ ] Operadores: +, -, *, /
- [ ] Suporte a números inteiros/float
- [ ] Environment básico para variáveis

### Marco 4 — REPL Interativo (10 min)
- [ ] Implementar loop Read-Eval-Print
- [ ] Histórico de comandos
- [ ] Tratamento de ctrl+c/ctrl+d
- [ ] Pretty printing de resultados
- [ ] Mensagens de erro amigáveis

### Marco 5 — Estruturas de Dados (15 min)
- [ ] Implementar listas ligadas
- [ ] Funções car, cdr, cons
- [ ] nil/empty list
- [ ] Predicados: atom?, list?, null?

### Marco 6 — Funções e Closure (20 min)
- [ ] Definição de funções: (define (func args) body)
- [ ] Aplicação de funções
- [ ] Closures e escopo lexical
- [ ] Funções anônimas (lambda)

### Marco 7 — Controle de Fluxo (15 min)
- [ ] if/else condicional
- [ ] Operadores de comparação: =, <, >, <=, >=
- [ ] Operadores lógicos: and, or, not
- [ ] Expressões booleanas

### Marco 8 — Funcionalidades Avançadas (30 min)
- [ ] Recursão e tail call optimization
- [ ] let/let* para binding local
- [ ] quote/unquote
- [ ] Macros básicas
- [ ] Funções higher-order (map, filter, reduce)

### Marco 9 — Biblioteca Padrão (20 min)
- [ ] Funções matemáticas (abs, sqrt, etc)
- [ ] Manipulação de strings
- [ ] I/O básico (read-file, write-file)
- [ ] Funções de lista (length, append, reverse)

### Marco 10 — Polimento (15 min)
- [ ] Melhor tratamento de erros
- [ ] Documentação de funções builtin
- [ ] Exemplos de código
- [ ] Performance optimizations

## Arquivos Principais
```
cmd/lispg/main.go          # Entry point
pkg/lexer/lexer.go         # Tokenização
pkg/parser/parser.go       # Parsing para AST
pkg/evaluator/evaluator.go # Avaliação de expressões
pkg/types/types.go         # Tipos de dados Lisp
pkg/builtins/builtins.go   # Funções built-in
internal/repl/repl.go      # REPL interativo
```

## Exemplo de Uso Final
```lisp
> (define factorial (lambda (n) (if (<= n 1) 1 (* n (factorial (- n 1))))))
> (factorial 5)
120
> (map (lambda (x) (* x x)) '(1 2 3 4 5))
(1 4 9 16 25)
```

## Baseado em buildyourownlisp.com
Implementação inspirada no livro/artigo para aprender C, LISP, Go e fundamentos de parsing.

## Rules

-- Cada comando Go que rodar, me explicar o porque e o que ele faz antes
