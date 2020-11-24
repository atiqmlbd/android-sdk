import Versions.lintVersion
plugins {
    java
    kotlin("jvm")
}

dependencies {
    // For a description of the below dependencies, see the main project README
    implementation("com.android.tools.lint:lint-api:$lintVersion")
    implementation("com.android.tools.lint:lint-checks:$lintVersion")
    testImplementation("junit:junit:4.12")
    testImplementation("com.android.tools.lint:lint:$lintVersion")
    testImplementation("com.android.tools.lint:lint-tests:$lintVersion")
    testImplementation("com.android.tools:testutils:$lintVersion")
}
java {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
}

val jar by tasks.getting(Jar::class) {
    manifest {
        // Only use the "-v2" key here if your check(s have been updated to the)
        // new 3.0 APIs (including UAST)
        attributes["Lint-Registry-v2"] = "dk.nodes.nstack.lint.NStackIssueRegistry"
    }
}
