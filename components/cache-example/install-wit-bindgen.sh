#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

cargo install --git https://github.com/bytecodealliance/wit-bindgen wit-bindgen-cli
