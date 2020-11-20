plugins {
    java
    id("java-gradle-plugin")
    `maven-publish`
    jacoco
    kotlin("jvm") version "1.4.10"
    id("com.gradle.plugin-publish") version "0.11.0"
    id("io.gitlab.arturbosch.detekt") version "1.9.0"
}

java {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
}

jacoco {
    toolVersion = "0.8.5"
}

dependencies {
    implementation(kotlin("stdlib-jdk8"))
    implementation(gradleApi())
    implementation(localGroovy())
    implementation("com.android.tools.build:gradle:3.6.1")
}
