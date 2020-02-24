/**
* API
* This is the public API for nstack.io  Setup an application and use Application-Id and Rest-Api-Key
*
* The version of the OpenAPI document: 1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package dk.nodes.nstack.kotlin.codegen.model

import dk.nodes.nstack.kotlin.codegen.model.Language
import dk.nodes.nstack.kotlin.codegen.model.Platform

import com.squareup.moshi.Json
/**
 * 
 * @param language 
 * @param platform 
 */

data class Meta2 (
    @Json(name = "language")
    val language: Language,
    @Json(name = "platform")
    val platform: Platform
) 



