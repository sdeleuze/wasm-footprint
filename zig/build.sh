#!/bin/sh
set -e

zig build -Drelease-small

# language,version,size
echo -n "Zig,"
echo -n `zig version`
echo -n ","
echo `stat -c '%s' zig-out/lib/add.wasm`