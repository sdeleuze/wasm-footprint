#!/bin/sh
set -e

./gradlew wasmProductionExecutableCompileSync 1>/dev/null

#wasm-opt build/compileSync/main/productionExecutable/kotlin/add-wasm.wasm -o build/compileSync/main/productionExecutable/kotlin/add-wasm-opt.wasm --enable-nontrapping-float-to-int --enable-typed-function-references --enable-gc --enable-reference-types --enable-exception-handling -O3 --inline-functions-with-loops --traps-never-happen --fast-math

# language,version,size
echo -n "Kotlin,"
echo -n "1.7.20-Beta"
echo -n ","
echo `stat -c '%s' build/compileSync/main/productionExecutable/kotlin/add-wasm.wasm`