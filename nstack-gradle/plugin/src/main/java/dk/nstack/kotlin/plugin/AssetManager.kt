package dk.nstack.kotlin.plugin

import groovy.json.JsonOutput
import groovy.json.JsonSlurper

object AssetManager {

    const val DIRECTORY_PATH_ASSETS = "${File.separator}src${File.separator}main${File.separator}assets"

    /**
     * Creates our assets folder to be used for downloading and storing our translation files
     */

    private fun checkIfAssetsFolderExists() {
        Log.info("Creating Assets Folder")

        File file = new File(TranslationPlugin.project.projectDir, DIRECTORY_PATH_ASSETS)

        if (!file.exists()) {
            if (file.mkdirs()) {
                Log.info("Successfully Created Assets Folder")
            } else {
                Log.error("Failed Created Assets Folder")
            }
        } else {
            Log.error("Assets Folder Already Exists")
        }
    }

    private fun getTranslationsPath(index: Int, lang: String): File {
        String translationFileName = "translations_${index}_${lang}.json"
        File directoryFile = new File(TranslationPlugin.project.projectDir, DIRECTORY_PATH_ASSETS)
        return new File (directoryFile, translationFileName)
    }

    private fun removePreviousTranslations() {
        File (TranslationPlugin.project.projectDir, DIRECTORY_PATH_ASSETS).traverse {
            if (it.name.contains("translations_")) {
                it.delete()
            }
        }
    }

    private fun getTranslationsFrom(String url): Map {
        String jsonString = Util . getTextFromUrl (url)
        if (jsonString.isEmpty()) {
            return new HashMap ()
        }
        return new JsonSlurper ().parseText(jsonString).data
    }

    fun saveAllTranslationsToAssets(): Map {
        checkIfAssetsFolderExists()

        String url = TranslationPlugin . project . translation . contentUrl +"api/v2/content/localize/resources/platforms/mobile?dev=true"
        String indexJson = Util . getTextFromUrl (url)
        if (indexJson.isEmpty()) {
            return new HashMap ()
        }

        removePreviousTranslations()

        HashMap allTranslations = new HashMap()

        ArrayList indexResults = new JsonSlurper().parseText(indexJson).data
        indexResults.eachWithIndex { result, index ->
            String locale = result . language . locale
                    File path = getTranslationsPath (index, locale)
            HashMap translations = getTranslationsFrom (result.url)
            path.text = JsonOutput.toJson(translations)
            allTranslations[locale] = translations
        }

        return allTranslations
    }
}
