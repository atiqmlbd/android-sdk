//
// UGCAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class UGCAPI {
    /**
     Feedback
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter breadcrumbs0Meta: (form)  
     - parameter os: (form)  
     - parameter device: (form)  
     - parameter appVersion: (form)  
     - parameter name: (form)  
     - parameter email: (form)  
     - parameter message: (form)  
     - parameter image: (form)  
     - parameter type: (form)  
     - parameter platform: (form)  
     - parameter metaKey: (form)  
     - parameter breadcrumbs0Event: (form)  
     - parameter breadcrumbs0Timestamp: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func feedback(xApplicationId: String, xRestApiKey: String, breadcrumbs0Meta: String, os: String, device: String, appVersion: String, name: String, email: String, message: String, image: String, type: String, platform: String, metaKey: String, breadcrumbs0Event: String, breadcrumbs0Timestamp: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        feedbackWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, breadcrumbs0Meta: breadcrumbs0Meta, os: os, device: device, appVersion: appVersion, name: name, email: email, message: message, image: image, type: type, platform: platform, metaKey: metaKey, breadcrumbs0Event: breadcrumbs0Event, breadcrumbs0Timestamp: breadcrumbs0Timestamp).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Feedback
     - POST /api/v2/ugc/feedbacks
     - #### Request details  Method:    `POST`  URL:    `/api/v2/ugc/feedbacks`  #### Headers   `X-Application-Id`  `X-Rest-Api-Key`  #### Response codes(s)  `200` OK  `412` Validation failed  #### Post params  `type` (string: feedback, bug) **optional, default is feedback**  `platform` (string: web, ios, android, unknown) **optional, default is unknown**  `os` (string) **optional**  `app_version` (string) **optional**  `device` (string) **optional**  `name` (string) **optional**  `email` (string) **optional**  `message` (string) **optional**  `image` (jpg,jpeg,png) **optional**  `meta` (array/dict, (full flexiable)) **optional**  `breadcrumbs` (array, {event (required): string, timestamp (required): Y-m-d H:i:s, meta (optional): array) **optional**
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter breadcrumbs0Meta: (form)  
     - parameter os: (form)  
     - parameter device: (form)  
     - parameter appVersion: (form)  
     - parameter name: (form)  
     - parameter email: (form)  
     - parameter message: (form)  
     - parameter image: (form)  
     - parameter type: (form)  
     - parameter platform: (form)  
     - parameter metaKey: (form)  
     - parameter breadcrumbs0Event: (form)  
     - parameter breadcrumbs0Timestamp: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func feedbackWithRequestBuilder(xApplicationId: String, xRestApiKey: String, breadcrumbs0Meta: String, os: String, device: String, appVersion: String, name: String, email: String, message: String, image: String, type: String, platform: String, metaKey: String, breadcrumbs0Event: String, breadcrumbs0Timestamp: String) -> RequestBuilder<Void> {
        let path = "/api/v2/ugc/feedbacks"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "breadcrumbs[0][meta]": breadcrumbs0Meta.encodeToJSON(),
            "os": os.encodeToJSON(),
            "device": device.encodeToJSON(),
            "app_version": appVersion.encodeToJSON(),
            "name": name.encodeToJSON(),
            "email": email.encodeToJSON(),
            "message": message.encodeToJSON(),
            "image": image.encodeToJSON(),
            "type": type.encodeToJSON(),
            "platform": platform.encodeToJSON(),
            "meta[key]": metaKey.encodeToJSON(),
            "breadcrumbs[0][event]": breadcrumbs0Event.encodeToJSON(),
            "breadcrumbs[0][timestamp]": breadcrumbs0Timestamp.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     PostFeedback
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter os: (form)  
     - parameter device: (form)  
     - parameter appVersion: (form)  
     - parameter name: (form)  
     - parameter email: (form)  
     - parameter message: (form)  
     - parameter image: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postFeedback(xApplicationId: String, xRestApiKey: String, os: String, device: String, appVersion: String, name: String, email: String, message: String, image: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        postFeedbackWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, os: os, device: device, appVersion: appVersion, name: name, email: email, message: message, image: image).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     PostFeedback
     - POST /api/v1/ugc/feedbacks
     - #### Request details  Method:    `POST`  URL:    `/api/v1/ugc/feedbacks`  #### Headers   `X-Application-Id`  `X-Rest-Api-Key`  #### Response codes(s)  `200` OK  `412` Validation failed  #### Post params  `os` (string) **optional**  `app_version` (string) **optional**  `device` (string) **optional**  `name` (string) **optional**  `email` (string) **optional**  `message` (string) **optional**  `image` (jpg,jpeg,png) **optional**
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter os: (form)  
     - parameter device: (form)  
     - parameter appVersion: (form)  
     - parameter name: (form)  
     - parameter email: (form)  
     - parameter message: (form)  
     - parameter image: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func postFeedbackWithRequestBuilder(xApplicationId: String, xRestApiKey: String, os: String, device: String, appVersion: String, name: String, email: String, message: String, image: String) -> RequestBuilder<Void> {
        let path = "/api/v1/ugc/feedbacks"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "os": os.encodeToJSON(),
            "device": device.encodeToJSON(),
            "app_version": appVersion.encodeToJSON(),
            "name": name.encodeToJSON(),
            "email": email.encodeToJSON(),
            "message": message.encodeToJSON(),
            "image": image.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     PushLogs
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter provider: (form)  
     - parameter key: (form)  
     - parameter type: (form)  
     - parameter succeeded: (form)  
     - parameter request: (form)  
     - parameter response: (form)  
     - parameter userId: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pushLogs(xApplicationId: String, xRestApiKey: String, provider: String, key: String, type: String, succeeded: Bool, request: Any, response: Any, userId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        pushLogsWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, provider: provider, key: key, type: type, succeeded: succeeded, request: request, response: response, userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     PushLogs
     - POST /api/v2/ugc/push-logs
     - #### Request details Method:    `POST`  URL:    `/api/v2/ugc/push-logs`  #### Headers  `X-Application-Id`  `X-Rest-Api-Key`  #### Response codes(s) `201` Created  `412` Validation failed  #### Post params `provider` (string) **required** (fx fcm, urban-airship)  `key` (string) **required** (App key in fcm / ua)  `type` (string) **required** (fx standard, freind-request, taxi-arrived etc)  `succeeded` (bool) **required** (Did push get sent?)  `request` (json) **optional** (Insert everything passed to provider)  `response` (json) **optional** (Insert everything received from provider)  `user_id` (int/string) **optional** (User id)  `relation_type` (string) **optional** (Fx Booking, Company etc)  `relation_id` (int) **optional** (Fx Id of Booking, id of Company etc)
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter provider: (form)  
     - parameter key: (form)  
     - parameter type: (form)  
     - parameter succeeded: (form)  
     - parameter request: (form)  
     - parameter response: (form)  
     - parameter userId: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func pushLogsWithRequestBuilder(xApplicationId: String, xRestApiKey: String, provider: String, key: String, type: String, succeeded: Bool, request: Any, response: Any, userId: Int) -> RequestBuilder<Void> {
        let path = "/api/v2/ugc/push-logs"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "provider": provider.encodeToJSON(),
            "key": key.encodeToJSON(),
            "type": type.encodeToJSON(),
            "succeeded": succeeded.encodeToJSON(),
            "request": request.encodeToJSON(),
            "response": response.encodeToJSON(),
            "user_id": userId.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     PushLogs1
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter provider: (form)  
     - parameter key: (form)  
     - parameter type: (form)  
     - parameter succeeded: (form)  
     - parameter request: (form)  
     - parameter response: (form)  
     - parameter userId: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pushLogs1(xApplicationId: String, xRestApiKey: String, provider: String, key: String, type: String, succeeded: Bool, request: Any, response: Any, userId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        pushLogs1WithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, provider: provider, key: key, type: type, succeeded: succeeded, request: request, response: response, userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     PushLogs1
     - POST /api/v1/ugc/push-logs
     - #### Request details Method:    `POST`  URL:    `/api/v1/ugc/push-logs`  #### Headers  `X-Application-Id`  `X-Rest-Api-Key`  #### Response codes(s) `201` Created  `412` Validation failed  #### Post params `provider` (string) **required** (fx fcm, urban-airship)  `key` (string) **required** (App key in fcm / ua)  `type` (string) **required** (fx standard, freind-request, taxi-arrived etc)  `succeeded` (bool) **required** (Did push get sent?)  `request` (json) **optional** (Insert everything passed to provider)  `response` (json) **optional** (Insert everything received from provider)  `user_id` (int/string) **optional** (User id)  `relation_type` (string) **optional** (Fx Booking, Company etc)  `relation_id` (int) **optional** (Fx Id of Booking, id of Company etc)
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter provider: (form)  
     - parameter key: (form)  
     - parameter type: (form)  
     - parameter succeeded: (form)  
     - parameter request: (form)  
     - parameter response: (form)  
     - parameter userId: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func pushLogs1WithRequestBuilder(xApplicationId: String, xRestApiKey: String, provider: String, key: String, type: String, succeeded: Bool, request: Any, response: Any, userId: Int) -> RequestBuilder<Void> {
        let path = "/api/v1/ugc/push-logs"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "provider": provider.encodeToJSON(),
            "key": key.encodeToJSON(),
            "type": type.encodeToJSON(),
            "succeeded": succeeded.encodeToJSON(),
            "request": request.encodeToJSON(),
            "response": response.encodeToJSON(),
            "user_id": userId.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Result
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter key: (form)  
     - parameter user: (form)  
     - parameter answer: (form)  
     - parameter points: (form)  
     - parameter tag: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func result(xApplicationId: String, xRestApiKey: String, key: String, user: String, answer: [Int], points: Int, tag: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        resultWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, key: key, user: user, answer: answer, points: points, tag: tag).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Result
     - POST /api/v2/ugc/results
     - #### Request details Method:    `POST`  URL:    `/api/v2/ugc/feedbacks`  #### Headers  `X-Application-Id`  `X-Rest-Api-Key`  #### Response codes(s) `200` OK  `412` Validation failed  #### Post params `key` (string) **required**  `user` (string) **required**  `answer` (string) **required**  `points` (int) **required**  `tag` (string) **required**
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter key: (form)  
     - parameter user: (form)  
     - parameter answer: (form)  
     - parameter points: (form)  
     - parameter tag: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func resultWithRequestBuilder(xApplicationId: String, xRestApiKey: String, key: String, user: String, answer: [Int], points: Int, tag: String) -> RequestBuilder<Void> {
        let path = "/api/v2/ugc/results"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "key": key.encodeToJSON(),
            "user": user.encodeToJSON(),
            "answer": answer.encodeToJSON(),
            "points": points.encodeToJSON(),
            "tag": tag.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Result1
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter key: (form)  
     - parameter user: (form)  
     - parameter answer: (form)  
     - parameter points: (form)  
     - parameter tag: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func result1(xApplicationId: String, xRestApiKey: String, key: String, user: String, answer: [Int], points: Int, tag: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        result1WithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, key: key, user: user, answer: answer, points: points, tag: tag).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Result1
     - POST /api/v1/ugc/results
     - #### Request details Method:    `POST`  URL:    `/api/v1/ugc/feedbacks`  #### Headers  `X-Application-Id`  `X-Rest-Api-Key`  #### Response codes(s) `200` OK  `412` Validation failed  #### Post params `key` (string) **required**  `user` (string) **required**  `answer` (string) **required**  `points` (int) **required**  `tag` (string) **required** 
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter key: (form)  
     - parameter user: (form)  
     - parameter answer: (form)  
     - parameter points: (form)  
     - parameter tag: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func result1WithRequestBuilder(xApplicationId: String, xRestApiKey: String, key: String, user: String, answer: [Int], points: Int, tag: String) -> RequestBuilder<Void> {
        let path = "/api/v1/ugc/results"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "key": key.encodeToJSON(),
            "user": user.encodeToJSON(),
            "answer": answer.encodeToJSON(),
            "points": points.encodeToJSON(),
            "tag": tag.encodeToJSON()
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

}
