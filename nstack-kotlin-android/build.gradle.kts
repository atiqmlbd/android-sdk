import org.jetbrains.kotlin.config.KotlinCompilerVersion

plugins {
    id("com.android.library")
    kotlin("android")
    kotlin("android.extensions")
}

android {
    compileSdkVersion(29)
    buildToolsVersion("29.0.3")
    defaultConfig {
        minSdkVersion(21)
        targetSdkVersion(29)
        versionCode = 230
        versionName = Versions.VERSION_NAME
        manifestPlaceholders += mapOf(
                "appId" to "placeholder",
                "apiKey" to "placeholder",
                "env" to "production")
        buildConfigField("String", "SDK_VERSION", "\"$Versions.VERSION_NAME\"")
    }
    testOptions.unitTests.apply {
        isReturnDefaultValues = true
    }
}

dependencies {
//    lintChecks(project(":nstack-kotlin-android-lint"))
//    lintPublish(project(":nstack-kotlin-android-lint"))
    implementation(kotlin("stdlib", KotlinCompilerVersion.VERSION))
    implementation(kotlin("reflect", version = "${Versions.kotlin_version}"))
    api(project(":nstack-kotlin-core"))
    implementation("com.squareup.okhttp3:okhttp:3.14.2")
    implementation("com.squareup.okhttp3:logging-interceptor:3.14.2")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:${Versions.kotlinx_version}")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-android:${Versions.kotlinx_version}")
    implementation("androidx.core:core-ktx:1.1.0")
    implementation("com.google.code.gson:gson:2.8.5")

    implementation("androidx.core:core-ktx:1.1.0")
    implementation("androidx.appcompat:appcompat:1.1.0")
    implementation("androidx.lifecycle:lifecycle-extensions:2.2.0")
    implementation("androidx.lifecycle:lifecycle-viewmodel-ktx:2.2.0")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.2.0")
    implementation("com.google.android.material:material:1.1.0")

    implementation("org.koin:koin-core:${Versions.koin_version}")
    implementation("org.koin:koin-core-ext:${Versions.koin_version}")

    testImplementation("org.koin:koin-test:${Versions.koin_version}")
    testImplementation("junit:junit:4.12")
    testImplementation("io.mockk:mockk:1.9.3")
    testImplementation("org.json:json:20180130")
    testImplementation("org.jetbrains.kotlinx:kotlinx-coroutines-test:1.3.1")
}
