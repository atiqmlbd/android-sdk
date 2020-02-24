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
 * @param yourContent 
 * @param following 
 * @param myActivity 
 * @param title 
 * @param typeLike 
 * @param typeComment 
 * @param typePost 
 * @param typeMention 
 * @param titleError 
 * @param youLiked 
 * @param someonesPhoto 
 * @param liked 
 * @param youCommented 
 * @param commentedOnArticle 
 * @param likedAArticle 
 * @param you 
 * @param commentedOn 
 * @param yourPhoto 
 * @param youMentioned 
 * @param yourself 
 * @param mentioned 
 * @param noActivity 
 * @param typeArticle 
 * @param youFollow 
 * @param isFollowing 
 * @param aPhoto 
 * @param anArticle 
 * @param someonesArticle 
 * @param typeArticleLike 
 * @param typeArticleComment 
 * @param aComment 
 * @param someonesComment 
 * @param yourArticle 
 * @param yourComment 
 * @param youUnfollowed 
 * @param youFollowed 
 * @param followed 
 * @param unfollowed 
 * @param someone 
 * @param inSomething 
 * @param deny 
 * @param approve 
 * @param wantsToAddYou 
 */

data class Activity (
    @Json(name = "yourContent")
    val yourContent: kotlin.String,
    @Json(name = "following")
    val following: kotlin.String,
    @Json(name = "myActivity")
    val myActivity: kotlin.String,
    @Json(name = "title")
    val title: kotlin.String,
    @Json(name = "typeLike")
    val typeLike: kotlin.String,
    @Json(name = "typeComment")
    val typeComment: kotlin.String,
    @Json(name = "typePost")
    val typePost: kotlin.String,
    @Json(name = "typeMention")
    val typeMention: kotlin.String,
    @Json(name = "titleError")
    val titleError: kotlin.String,
    @Json(name = "youLiked")
    val youLiked: kotlin.String,
    @Json(name = "someonesPhoto")
    val someonesPhoto: kotlin.String,
    @Json(name = "liked")
    val liked: kotlin.String,
    @Json(name = "youCommented")
    val youCommented: kotlin.String,
    @Json(name = "commentedOnArticle")
    val commentedOnArticle: kotlin.String,
    @Json(name = "likedAArticle")
    val likedAArticle: kotlin.String,
    @Json(name = "you")
    val you: kotlin.String,
    @Json(name = "commentedOn")
    val commentedOn: kotlin.String,
    @Json(name = "yourPhoto")
    val yourPhoto: kotlin.String,
    @Json(name = "youMentioned")
    val youMentioned: kotlin.String,
    @Json(name = "yourself")
    val yourself: kotlin.String,
    @Json(name = "mentioned")
    val mentioned: kotlin.String,
    @Json(name = "noActivity")
    val noActivity: kotlin.String,
    @Json(name = "typeArticle")
    val typeArticle: kotlin.String,
    @Json(name = "youFollow")
    val youFollow: kotlin.String,
    @Json(name = "isFollowing")
    val isFollowing: kotlin.String,
    @Json(name = "aPhoto")
    val aPhoto: kotlin.String,
    @Json(name = "anArticle")
    val anArticle: kotlin.String,
    @Json(name = "someonesArticle")
    val someonesArticle: kotlin.String,
    @Json(name = "typeArticleLike")
    val typeArticleLike: kotlin.String,
    @Json(name = "typeArticleComment")
    val typeArticleComment: kotlin.String,
    @Json(name = "aComment")
    val aComment: kotlin.String,
    @Json(name = "someonesComment")
    val someonesComment: kotlin.String,
    @Json(name = "yourArticle")
    val yourArticle: kotlin.String,
    @Json(name = "yourComment")
    val yourComment: kotlin.String,
    @Json(name = "youUnfollowed")
    val youUnfollowed: kotlin.String,
    @Json(name = "youFollowed")
    val youFollowed: kotlin.String,
    @Json(name = "followed")
    val followed: kotlin.String,
    @Json(name = "unfollowed")
    val unfollowed: kotlin.String,
    @Json(name = "someone")
    val someone: kotlin.String,
    @Json(name = "inSomething")
    val inSomething: kotlin.String,
    @Json(name = "deny")
    val deny: kotlin.String,
    @Json(name = "approve")
    val approve: kotlin.String,
    @Json(name = "wantsToAddYou")
    val wantsToAddYou: kotlin.String
) 



