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
 * @param text 
 * @param dataMinusCenter 
 */

data class InlineObject1 (
    @Json(name = "text")
    val text: kotlin.String,
    @Json(name = "data-center")
    val dataMinusCenter: kotlin.String
) 



