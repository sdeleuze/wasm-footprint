#!/bin/sh
set -e

a=2
b=3
echo "add($a, $b)"
wasmtime run --invoke add target/wasm32-unknown-unknown/release/add.wasm $a $b