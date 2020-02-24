//
// RateRemindersV2API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class RateRemindersV2API {
    /**
     ActionEvents
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter actionEventsRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actionEvents(xApplicationId: String, xRestApiKey: String, actionEventsRequest: ActionEventsRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        actionEventsWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, actionEventsRequest: actionEventsRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     ActionEvents
     - POST /api/v2/notify/rate_reminder_v2/events
     - Post rate reminder  #### Request details Method: `POST`  URL: `/api/v2/notify/rate_reminder/views`  #### Headers  `X-Application-Id` (string) **required** _Application ID from [NStack](https://nstack.io)_  `X-Rest-Api-Key` (string) **required** _Rest API key from [NStack](https://nstack.io)_  #### URL Parameters `guid` (int?) **required** _[?]_  `platform` (string) **required** _[is this used at all?]_  `answer` (string) **required** _[\"yes\", \"no\", \"later\"]_  #### Response codes `200` OK  `412` Precondition failed  `445` Entity not found
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter actionEventsRequest: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func actionEventsWithRequestBuilder(xApplicationId: String, xRestApiKey: String, actionEventsRequest: ActionEventsRequest) -> RequestBuilder<Void> {
        let path = "/api/v2/notify/rate_reminder_v2/events"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: actionEventsRequest)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Actions
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actions(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        actionsWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Actions
     - GET /api/v2/notify/rate_reminder_v2/actions
     - Get rate reminder  #### Request details Method: `GET`  URL: `/api/v2/notify/rate_reminder/actions`  #### Headers  `X-Application-Id` (string) **required** _Application ID from [NStack](https://nstack.io)_  `X-Rest-Api-Key` (string) **required** _Rest API key from [NStack](https://nstack.io)_  #### Response codes `200` OK  `445` Entity not found
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func actionsWithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v2/notify/rate_reminder_v2/actions"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Answer
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter answerRequest: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func answer(xApplicationId: String, xRestApiKey: String, answerRequest: AnswerRequest, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        answerWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, answerRequest: answerRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Answer
     - POST /api/v2/notify/rate_reminder_v2/2/answers
     - Post rate reminder  #### Request details Method: `POST`  URL: `/api/v2/notify/rate_reminder/views`  #### Headers  `X-Application-Id` (string) **required** _Application ID from [NStack](https://nstack.io)_  `X-Rest-Api-Key` (string) **required** _Rest API key from [NStack](https://nstack.io)_  #### URL Parameters `guid` (int?) **required** _[?]_  `platform` (string) **required** _[is this used at all?]_  `answer` (string) **required** _[\"yes\", \"no\", \"later\"]_  #### Response codes `200` OK  `412` Precondition failed  `445` Entity not found
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter answerRequest: (body)  
     - returns: RequestBuilder<Void> 
     */
    open class func answerWithRequestBuilder(xApplicationId: String, xRestApiKey: String, answerRequest: AnswerRequest) -> RequestBuilder<Void> {
        let path = "/api/v2/notify/rate_reminder_v2/2/answers"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: answerRequest)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     GetShow12
     
     - parameter guid: (query)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShow12(guid: String, xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        getShow12WithRequestBuilder(guid: guid, xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     GetShow12
     - GET /api/v2/notify/rate_reminder_v2
     - Get rate reminder  #### Request details Method: `GET`  URL: `/api/v2/notify/rate_reminder`  #### Headers  `X-Application-Id` (string) **required** _Application ID from [NStack](https://nstack.io)_  `X-Rest-Api-Key` (string) **required** _Rest API key from [NStack](https://nstack.io)_  #### URL Parameters `guid` (int?) **required** _[?]_  `platform` (string) **required** _[is this used at all?]_  #### Response codes `200` OK  `412` Precondition failed  `445` Entity not found
     - parameter guid: (query)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func getShow12WithRequestBuilder(guid: String, xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v2/notify/rate_reminder_v2"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "guid": guid.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
