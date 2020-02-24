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
 * @param headerTitle 
 * @param content 
 * @param skip 
 * @param placeholder 
 * @param invalidTitle 
 * @param invalidMessage 
 */

data class AccessCode (
    @Json(name = "headerTitle")
    val headerTitle: kotlin.String,
    @Json(name = "content")
    val content: kotlin.String,
    @Json(name = "skip")
    val skip: kotlin.String,
    @Json(name = "placeholder")
    val placeholder: kotlin.String,
    @Json(name = "invalidTitle")
    val invalidTitle: kotlin.String,
    @Json(name = "invalidMessage")
    val invalidMessage: kotlin.String
) 



