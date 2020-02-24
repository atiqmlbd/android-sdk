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
 * @param filterByBodyPart 
 * @param search 
 * @param studios 
 * @param tattoos 
 * @param artists 
 * @param articles 
 * @param people 
 */

data class Discover (
    @Json(name = "title")
    val title: kotlin.String,
    @Json(name = "filterByBodyPart")
    val filterByBodyPart: kotlin.String,
    @Json(name = "search")
    val search: kotlin.String,
    @Json(name = "studios")
    val studios: kotlin.String,
    @Json(name = "tattoos")
    val tattoos: kotlin.String,
    @Json(name = "artists")
    val artists: kotlin.String,
    @Json(name = "articles")
    val articles: kotlin.String,
    @Json(name = "people")
    val people: kotlin.String
) 



