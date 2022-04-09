#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

rustup target add wasm32-wasi
cargo build --target wasm32-wasi --release
