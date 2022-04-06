#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

wit-bindgen rust-wqasm --export ../cache.wit
