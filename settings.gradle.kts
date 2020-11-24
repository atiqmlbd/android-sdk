include (":nstack-kotlin-android", ":demo", ":nstack-kotlin-core", ":nstack-gradle", ":nstack-kotlin-android-lint")
rootProject.buildFileName = "build.gradle.kts"
rootProject.name = "NStack Android SDK"
pluginManagement {
    repositories {
        gradlePluginPortal()
        jcenter()
        maven { url = uri("../nstack-gradle/build/repository") }
    }
}