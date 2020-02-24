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


import com.squareup.moshi.Json
/**
 * 
 * @param platform 
 * @param guid 
 * @param version 
 * @param oldVersion 
 * @param lastUpdated 
 */

data class InlineObject21 (
    @Json(name = "platform")
    val platform: kotlin.String,
    @Json(name = "guid")
    val guid: kotlin.String,
    @Json(name = "version")
    val version: kotlin.String,
    @Json(name = "old_version")
    val oldVersion: kotlin.String,
    @Json(name = "last_updated")
    val lastUpdated: kotlin.String
) 



