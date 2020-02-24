//
// StaggerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class StaggerAPI {
    /**
     Gettag
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter contentType: (header)  
     - parameter text: (form)  
     - parameter dataCenter: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func gettag(xApplicationId: String, xRestApiKey: String, contentType: String, text: String, dataCenter: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        gettagWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, contentType: contentType, text: text, dataCenter: dataCenter).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gettag
     - POST /api/v2/stagger
     - Get a tag from a text (Feedback / bug report)   **Initial response time can be 15sec in case you hit a cold container**   #### Request details Method: `POST`  URL: `api/v2/content/stagger`  #### Headers `X-Application-Id` (string) **required** _Application ID from [NStack](https://nstack.io)_  `X-Rest-Api-Key` (string) **required** _Rest API key from [NStack](https://nstack.io)_  #### Post params `text` (string) **required**  `data-center` (string) **optional, default: aws:ireland** **(Options: aws:ireland)**   #### Response codes(s) `200` OK  `412` Validation error  `500` Internal server error _Please read response message_
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter contentType: (header)  
     - parameter text: (form)  
     - parameter dataCenter: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func gettagWithRequestBuilder(xApplicationId: String, xRestApiKey: String, contentType: String, text: String, dataCenter: String) -> RequestBuilder<Void> {
        let path = "/api/v2/stagger"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "text": text.encodeToJSON(),
            "data-center": dataCenter.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON(),
            "Content-Type": contentType.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
