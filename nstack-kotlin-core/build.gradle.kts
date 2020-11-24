import org.jetbrains.kotlin.config.KotlinCompilerVersion

plugins {
    java
    kotlin("jvm")
}

java {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
}


dependencies {
    implementation(kotlin("stdlib", KotlinCompilerVersion.VERSION))
    implementation("com.squareup.okhttp3:okhttp:3.14.2")
    implementation("com.squareup.okhttp3:logging-interceptor:3.14.2")
    implementation("com.google.code.gson:gson:2.8.6")
    implementation("org.koin:koin-core:${Versions.koin_version}")
    implementation("org.koin:koin-core-ext:${Versions.koin_version}")

    testImplementation("org.jetbrains.kotlinx:kotlinx-coroutines-test:1.3.1")
    testImplementation("io.mockk:mockk:1.9.3")
    testImplementation("junit:junit:4.13")
}
