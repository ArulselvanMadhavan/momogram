.DEFULAT_GOAL := all

.PHONY: deps
deps:
	-dune build
	opam install . --deps-only --with-test

.PHONY: build
build:
	dune build @default

.PHONY: all
all: deps build

.PHONY: run
run: build
	dune exec momogram
