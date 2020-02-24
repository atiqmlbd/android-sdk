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
 * @param id 
 * @param name 
 * @param locale 
 * @param direction 
 * @param isDefault 
 * @param isBestFit 
 */

data class Data (
    @Json(name = "id")
    val id: kotlin.Int,
    @Json(name = "name")
    val name: kotlin.String,
    @Json(name = "locale")
    val locale: kotlin.String,
    @Json(name = "direction")
    val direction: kotlin.String,
    @Json(name = "is_default")
    val isDefault: kotlin.Boolean,
    @Json(name = "is_best_fit")
    val isBestFit: kotlin.Boolean
) 



