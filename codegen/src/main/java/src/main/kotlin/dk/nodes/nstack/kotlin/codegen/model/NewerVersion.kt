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

import dk.nodes.nstack.kotlin.codegen.model.Translate

import com.squareup.moshi.Json
/**
 * 
 * @param state 
 * @param lastId 
 * @param version 
 * @param link 
 * @param translate 
 */

data class NewerVersion (
    @Json(name = "state")
    val state: kotlin.String,
    @Json(name = "last_id")
    val lastId: kotlin.Int,
    @Json(name = "version")
    val version: kotlin.String,
    @Json(name = "link")
    val link: kotlin.String,
    @Json(name = "translate")
    val translate: Translate
) 



