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

import dk.nodes.nstack.kotlin.codegen.model.Localize
import dk.nodes.nstack.kotlin.codegen.model.RateReminder
import dk.nodes.nstack.kotlin.codegen.model.Update

import com.squareup.moshi.Json
/**
 * 
 * @param count 
 * @param update 
 * @param localize 
 * @param rateReminder 
 * @param platform 
 * @param createdAt 
 * @param lastUpdated 
 */

data class AppOpenData (
    @Json(name = "count")
    val count: kotlin.Int,
    @Json(name = "update")
    val update: Update,
    @Json(name = "localize")
    val localize: kotlin.Array<Localize>,
    @Json(name = "rate_reminder")
    val rateReminder: RateReminder,
    @Json(name = "platform")
    val platform: kotlin.String,
    @Json(name = "created_at")
    val createdAt: kotlin.String,
    @Json(name = "last_updated")
    val lastUpdated: kotlin.String
) 



