import dk.nstack.kotlin.plugin.TranslationPlugin
import org.jetbrains.kotlin.config.KotlinCompilerVersion

plugins {
    id("com.android.application")
    kotlin("android")
    kotlin("android.extensions")
}

apply(plugin = "androidx.navigation.safeargs.kotlin")

apply(plugin = TranslationPlugin())

translation {
    appId = "dTyz7mezul3YJliMtsoM3z8ZhmWqDR8kJLbF"
    apiKey = "PtmtXCGzgiKGkGrCKoRgFh0JK0uz8AUMLnGS"
    acceptHeader = "en-US"
    contentUrl = "https://nstack-staging.vapor.cloud/"
}

android {
    signingConfigs {
        register("release") {
            storePassword = "test1234"
            keyAlias = "key_test"
            keyPassword = "test1234"
            storeFile = file("/Users/lucassales/StudioProjects/nstack-kotlin/demo/keystore")
        }
    }
    compileSdkVersion(29)
    buildToolsVersion("29.0.3")

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }

    defaultConfig {
        applicationId = "dk.nodes.nstack.nstackkotlintest"
        minSdkVersion(21)
        targetSdkVersion(29)
        versionCode = 1
        versionName = "1.0"
        testInstrumentationRunner = "android.support.test.runner.AndroidJUnitRunner"


        manifestPlaceholders = mapOf(
                "appId" to translation.appId,
                "apiKey" to translation.apiKey
        )


    }
    buildTypes {
        named("debug") {
            manifestPlaceholders.putAll(mapOf("env" to "staging"))
        }
        named("release") {
            manifestPlaceholders.putAll(mapOf("env" to "production"))
            isMinifyEnabled = false
            setProguardFiles(listOf(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro"))
        }
    }
}

dependencies {
    implementation(kotlin("stdlib", KotlinCompilerVersion.VERSION))
    implementation(fileTree(mapOf("dir" to "libs", "include" to listOf("*.jar"))))
    implementation("androidx.appcompat:appcompat:1.2.0")
    implementation("androidx.core:core-ktx:1.3.2")
    implementation("androidx.fragment:fragment-ktx:1.2.5")
    implementation("androidx.lifecycle:lifecycle-extensions:2.2.0")
    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.2.0")
    implementation("androidx.lifecycle:lifecycle-livedata-ktx:2.2.0")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.2.0")
    implementation("androidx.navigation:navigation-fragment-ktx:2.3.1")
    implementation("androidx.navigation:navigation-ui-ktx:2.3.1")
    implementation("androidx.constraintlayout:constraintlayout:2.0.4")
    implementation("androidx.swiperefreshlayout:swiperefreshlayout:1.1.0")

    implementation("com.google.android.material:material:1.2.1")


    implementation(project(":nstack-kotlin-android"))

    testImplementation("junit:junit:4.12")
    androidTestImplementation("com.android.support.test:runner:1.0.2")
    androidTestImplementation("com.android.support.test.espresso:espresso-core:3.0.2")
}
