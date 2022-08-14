#!/bin/sh
set -e

cargo build --target wasm32-unknown-unknown --release 1>/dev/null


# language,version,size
echo -n "Rust,"
echo -n `rustc --version | cut -b 7-`
echo -n ","
echo `stat -c '%s' target/wasm32-unknown-unknown/release/add.wasm`