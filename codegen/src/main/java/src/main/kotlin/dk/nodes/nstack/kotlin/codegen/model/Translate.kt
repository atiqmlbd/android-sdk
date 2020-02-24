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
 * @param title 
 * @param message 
 * @param positiveBtn 
 * @param negativeBtn 
 */

data class Translate (
    @Json(name = "title")
    val title: kotlin.String,
    @Json(name = "message")
    val message: kotlin.String,
    @Json(name = "positiveBtn")
    val positiveBtn: kotlin.String,
    @Json(name = "negativeBtn")
    val negativeBtn: kotlin.String
) 



