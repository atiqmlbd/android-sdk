plugins {
    `kotlin-dsl`
    `kotlin-dsl-precompiled-script-plugins`
    id("signing")
    id("maven-publish")
    id("digital.wup.android-maven-publish")
}

afterEvaluate {

    task androidJavadoc(type: Javadoc) {
        source = android.sourceSets.main.java.sourceFiles
        classpath.add(project.files(android.getBootClasspath().join(File.pathSeparator)))
        classpath.add(configurations.compile)
    }

    task androidJavadocJar(type: Jar, dependsOn: androidJavadoc) {
        archiveClassifier.set("javadoc")
        from androidJavadoc.destinationDir
    }

    task androidSourcesJar(type: Jar) {
        archiveClassifier.set("sources")
        from android.sourceSets.main.java.sourceFiles
    }

    publishing {
        publications {
            nstackKotlinAar(MavenPublication) {

                artifact androidSourcesJar
                artifact androidJavadocJar
                from components.android

                pom {
                    artifactId = POM_ARTIFACT_ID
                    name = POM_NAME
                    packaging = POM_PACKAGING
                    groupId = GROUP
                    description = POM_DESCRIPTION
                    version = VERSION_NAME
                    url = POM_URL
                    inceptionYear = POM_INCEPTION_YEAR

                    licenses {
                        license {
                            name = POM_LICENCE_NAME
                            url = POM_LICENCE_URL
                        }
                    }

                    developers {
                        developer {
                            id = POM_DEVELOPER_ID
                            name = POM_DEVELOPER_NAME
                            email = POM_DEVELOPER_EMAIL
                        }
                    }

                    scm {
                        url = POM_SCM_URL
                        connection = POM_SCM_CONNECTION
                    }

                    issueManagement {
                        system = POM_ISSUE_MANAGEMENT_SYSTEM
                        url = POM_ISSUE_MANAGEMENT_URL
                    }
                }
            }
        }

        repositories {
            maven {
                credentials {
                    username ossrhUsername
                    password ossrhPassword
                }

                url = getPublishRepositoryUrl()
            }
        }

        if (JavaVersion.current().isJava8Compatible()) {
            allprojects {
                tasks.withType(Javadoc) {
                    options.addStringOption("Xdoclint:none", "-quiet")
                }
            }
        }

        signing {
            required {
                return isSigningRequired()
            }

            sign publishing.publications.nstackKotlinAar
        }
    }
}
