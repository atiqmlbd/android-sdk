buildscript {
    // Username & password for Sonatype, stored in gradle.properties
    val VERSION_NAME = Versions.VERSION_NAME
    val _OSSRH_USERNAME = System.getenv("NEXUS_USERNAME")
    val _OSSRH_PASSWORD = System.getenv("NEXUS_PASSWORD")
    val _IS_RELEASE_VERSION = !VERSION_NAME.endsWith("SNAPSHOT")

    fun getPublishRepositoryUrl(): String {
        return if (_IS_RELEASE_VERSION) Properties.RELEASE_REPO_URL else Properties.SNAPSHOT_REPO_URL
    }

    val isSigningRequired: Boolean = _IS_RELEASE_VERSION

    repositories {
        google()
        jcenter()
        mavenCentral()
        mavenLocal()
    }

    dependencies {
        classpath("com.android.tools.build:gradle:4.1.1")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:${Versions.kotlin_version}")
        classpath("dk.nodes.nstack:translation:3.2.5")
        classpath("dk.nodes.ci:bitrise:1.1")
        classpath("org.jetbrains.dokka:dokka-android-gradle-plugin:${Versions.dokkaVersion}")
        classpath("io.codearte.gradle.nexus:gradle-nexus-staging-plugin:0.21.1")
        classpath("androidx.navigation:navigation-safe-args-gradle-plugin:2.3.1")
        classpath("digital.wup:android-maven-publish:3.6.2")
        classpath("org.koin:koin-gradle-plugin:${Versions.koin_version}")
    }
}

plugins {
    id("com.diffplug.gradle.spotless") version "3.23.1"
    id("io.codearte.nexus-staging") version "0.21.0"
    id("org.jetbrains.dokka") version "1.4.10.2"
}

allprojects {

    if (JavaVersion.current().isJava8Compatible()) {
        tasks.withType<Javadoc> {
            (options as StandardJavadocDocletOptions).addStringOption("Xdoclint:none", "-quiet")
        }
    }

    extra.apply {
        set("signing.keyId", System.getenv("keyId"))
        set("signing.secretKeyRingFile", System.getenv("secretKeyRingFile"))
        set("signing.password", System.getenv("password"))
    }

    repositories {
        google()
        jcenter()
        mavenCentral()
        mavenLocal()
        maven { url = uri("https://jitpack.io") }
    }
}

subprojects {
    group = Properties.GROUP
    version = Versions.VERSION_NAME

    apply(plugin = "org.jetbrains.dokka")
    apply(plugin = "com.diffplug.gradle.spotless")

    configure<com.diffplug.gradle.spotless.SpotlessExtension> {
        kotlin {
            target("**/*.kt")
            ktlint("0.33.0")
        }

        java {
            target("**/*.java")
            targetExclude("**/Translation.java")
            googleJavaFormat("1.1").aosp()
        }

        format("groovy") {
            target("**/*.groovy")
            indentWithTabs()
            indentWithSpaces(4)
            endWithNewline()
        }

        format("misc") {
            target("'**/*.gradle")
            trimTrailingWhitespace()
            indentWithSpaces(4)
            endWithNewline()
        }
    }
}

fun getRepositoryUsername(): String? {
    return System.getenv("NEXUS_USERNAME")
}

fun getRepositoryPassword(): String? {
    return System.getenv("NEXUS_PASSWORD")
}

nexusStaging {
    packageGroup = "dk.nodes"
    stagingProfileId = "5a414403b5bf75"
    username = getRepositoryUsername()
    password = getRepositoryPassword()
    delayBetweenRetriesInMillis = 30000
}
