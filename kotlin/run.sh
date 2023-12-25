#!/bin/sh
set -e

./gradlew wasmWasiNodeProductionRun

# language,version,size
echo -n "Kotlin,"
echo -n "2.0.0-Beta1"
echo -n ","
echo `stat -c '%s' build/compileSync/wasmWasi/main/productionExecutable/kotlin/add-wasm-wasi.wasm`