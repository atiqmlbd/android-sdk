package dk.nodes.nstack.kotlin.codegen.api

import org.openapitools.client.infrastructure.CollectionFormats.*
import retrofit2.http.*
import retrofit2.Call
import okhttp3.RequestBody
import okhttp3.ResponseBody
import okhttp3.MultipartBody


interface CountriesApi {
    @GET("/api/v2/geographic/countries")
    fun getIndex1(@Header("X-Application-Id") xminusApplicationMinusId: kotlin.String, @Header("X-Rest-Api-Key") xminusRestMinusApiMinusKey: kotlin.String): Call<Unit>

    @GET("/api/v1/geographic/countries")
    fun getIndex11(@Header("X-Application-Id") xminusApplicationMinusId: kotlin.String, @Header("X-Rest-Api-Key") xminusRestMinusApiMinusKey: kotlin.String): Call<Unit>

    @GET("/api/v1/geographic/countries/1")
    fun getShow11(@Header("X-Application-Id") xminusApplicationMinusId: kotlin.String, @Header("X-Rest-Api-Key") xminusRestMinusApiMinusKey: kotlin.String): Call<Unit>

    @GET("/api/v2/geographic/countries/4")
    fun getShow1234(@Header("X-Application-Id") xminusApplicationMinusId: kotlin.String, @Header("X-Rest-Api-Key") xminusRestMinusApiMinusKey: kotlin.String): Call<Unit>

}
