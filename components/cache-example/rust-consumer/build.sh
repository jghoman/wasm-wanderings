#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

cargo build --target wasm32-wasi --release
