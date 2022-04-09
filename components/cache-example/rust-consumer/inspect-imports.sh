#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

wasm-tools print target/wasm32-wasi/release/rust-consumer.wasm | grep import
