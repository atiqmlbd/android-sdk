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
 * @param titleLikes 
 * @param titleFollowers 
 * @param titleFollowing 
 * @param likesNoLikes 
 */

data class UserList (
    @Json(name = "titleLikes")
    val titleLikes: kotlin.String,
    @Json(name = "titleFollowers")
    val titleFollowers: kotlin.String,
    @Json(name = "titleFollowing")
    val titleFollowing: kotlin.String,
    @Json(name = "likesNoLikes")
    val likesNoLikes: kotlin.String
) 



