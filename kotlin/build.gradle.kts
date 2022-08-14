plugins {
    kotlin("multiplatform") version "1.7.20-Beta"
}

version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

kotlin {
    wasm {
        binaries.executable()
        browser()
    }
}
