WASI_CC       ?= /usr/bin/clang
WIT_BINDGEN   ?= wit-bindgen
WASMLINK      ?= wasmlink
WASMTIME      ?= wasmtime


bindgen:
	$(WIT_BINDGEN) c --import ../cache.wit --out-dir bindings

build:
	$(WASI_CC) -I . -I ./bindings -c -o cache.o bindings/cache.c
	$(WASI_CC) main.cpp cache.o -o cpp_consumer.wasm