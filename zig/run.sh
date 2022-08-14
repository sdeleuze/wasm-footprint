#!/bin/sh
set -e

a=2
b=3
echo "add($a, $b)"
wasmtime run --invoke add zig-out/lib/add.wasm $a $b