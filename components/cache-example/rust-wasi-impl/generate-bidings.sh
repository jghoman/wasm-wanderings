#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

wit-bindgen rust-wasm --export ../cache.wit
