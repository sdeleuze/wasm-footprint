@file:OptIn(ExperimentalWasmDsl::class)

import org.jetbrains.kotlin.gradle.targets.js.dsl.ExperimentalWasmDsl
import org.jetbrains.kotlin.gradle.targets.js.nodejs.NodeJsRootExtension

plugins {
    kotlin("multiplatform") version "2.0.0-Beta2"
}

version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

kotlin {
    wasmWasi {
        applyBinaryen()
        nodejs()
        binaries.executable()
    }

    sourceSets {
        val wasmWasiTest by getting {
            dependencies {
                implementation("org.jetbrains.kotlin:kotlin-test")
            }
        }
    }
}


rootProject.the<NodeJsRootExtension>().apply {
    version = "21.0.0-v8-canary202309143a48826a08"
    downloadBaseUrl = "https://nodejs.org/download/v8-canary"
}
