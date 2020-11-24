plugins {
    `kotlin-dsl`
    groovy
    `maven-publish`
}


//apply(plugin = "publish-nstack-translation-plugin")
group = GROUP
version = VERSION_NAME

gradlePlugin {
    plugins {
        register("NStackGradle") {
            id = "nstack.gradle"
            implementationClass = "dk.nstack.kotlin.plugin.TranslationPlugin"
        }
    }
}

publishing {
    repositories {
        maven(url = "build/repository")
    }
}

java {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
}

dependencies {
    implementation(gradleApi())
    implementation(localGroovy())
    implementation("com.android.tools.build:gradle:3.6.1")
}
