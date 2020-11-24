plugins {
    `kotlin-dsl`
    `maven-publish`
    groovy
}


//apply(plugin = "publish-nstack-translation-plugin")

java {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
}

dependencies {
    implementation(gradleApi())
    implementation(localGroovy())
    implementation("com.android.tools.build:gradle:3.6.1")
}
