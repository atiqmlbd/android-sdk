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
 * @param guid 
 * @param updateId 
 * @param answer 
 * @param type 
 */

data class InlineObject10 (
    @Json(name = "guid")
    val guid: kotlin.Int,
    @Json(name = "update_id")
    val updateId: kotlin.Int,
    @Json(name = "answer")
    val answer: kotlin.String,
    @Json(name = "type")
    val type: kotlin.String
) 



