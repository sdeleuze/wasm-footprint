# Kotlin/Wasm WASI example

## Run the program via Gradle with NodeJs

`./gradlew wasmWasiNodeRun`

## Run tests via Gradle with NodeJs

`./gradlew wasmWasiNodeTest`

## To build an optimized distribution

```
./gradlew :compileProductionExecutableKotlinWasmWasiOptimize`
ls -lhS build/compileSync/wasmWasi/main/productionExecutable/optimized/add-wasm-wasi.wasm 
```

