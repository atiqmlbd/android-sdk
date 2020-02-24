//
// LocalizeAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class LocalizeAPI {
    /**
     Deleteproposal
     
     - parameter guid: (query)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteproposal(guid: String, xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteproposalWithRequestBuilder(guid: guid, xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Deleteproposal
     - DELETE /api/v2/content/localize/proposals/9
     - Delete a specified proposal  #### Request details  Method:    `DELETE`  URL:    `{{nstackUrl}}/api/v2/content/localize/proposals/{{proposalId}}`  #### Headers   `X-Application-Id`  `X-Rest-Api-Key`  #### Query params `guid` (string) **required**  #### URL Parameters `proposalId` (int) **required**  #### Response codes(s)  `200` OK  `404` Entity not found  `401` Invalid guid
     - parameter guid: (query)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteproposalWithRequestBuilder(guid: String, xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v2/content/localize/proposals/9"
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

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Indexlanguages
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func indexlanguages(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Indexlanguages?,_ error: Error?) -> Void)) {
        indexlanguagesWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Indexlanguages
     - GET /api/v2/content/localize/mobile/languages
     - Get available languages for a platfom  #### Request details  Method:    `GET`  URL:    `/api/v1/content/localize/{platform-slug}/languages`  #### Headers   `X-Application-Id`  `X-Rest-Api-Key`  #### Query params `show_inactive_languages` (bool)  #### URL Parameters `platform-slug` (string) **required**  #### Response codes(s)  `200` OK  `404` Entity not found
     - responseHeaders: [Server(String), Transfer-Encoding(String), Connection(String), Cache-Control(String), Date(String)]
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Indexlanguages> 
     */
    open class func indexlanguagesWithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Indexlanguages> {
        let path = "/api/v2/content/localize/mobile/languages"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Indexlanguages>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Indexlanguages1
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func indexlanguages1(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        indexlanguages1WithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Indexlanguages1
     - GET /api/v1/localize/mobile/languages
     - Get available languages for a platfom  #### Request details  Method:    `GET`  URL:    `/api/v1/translate/{platform-slug}/languages`  #### Headers   `X-Application-Id`  `X-Rest-Api-Key`  #### Query params `show_inactive_languages` (bool)  #### URL Parameters `platform-slug` (string) **required**  #### Response codes(s)  `200` OK 
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func indexlanguages1WithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v1/localize/mobile/languages"
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
     Indexproposal
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func indexproposal(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        indexproposalWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Indexproposal
     - GET /api/v2/content/localize/proposals
     - #### Request details  Method:    `GET`  URL:    `/api/v2/content/localize/proposals`  #### Post params `state` (string) **optional, default unaccepted** *Options: unaccepted, accepted, all*  `guid` (string) **optional** shows if the proposal is deletable or not for the specified guid  #### Response codes(s)  `200` OK
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func indexproposalWithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v2/content/localize/proposals"
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
     Indexresource
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func indexresource(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Indexresource?,_ error: Error?) -> Void)) {
        indexresourceWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Indexresource
     - GET /api/v2/content/localize/resources/platforms/mobile
     - #### Request details  Method:    `GET`  URL:    `/api/v2/content/localize/resources/platforms/{platformSlug}`  ### Url param  `platformSlug` (string) **required** *eg: mobile, backend, web*  #### Headers  `X-Application-Id` (string) **required** _Application ID from [NStack](https://nstack.io)_  `X-Rest-Api-Key` (string) **required** _Rest API key from [NStack](https://nstack.io)_   ### Query  `last_updated` (date time, ISO8601) **optional** *eg: 2019-06-21T08%3A35%3A24%2B00%3A00*  - *Remember to url encode it*  - *Set timestamp from last app open (when localization has been synced), this will calculate which localizations should be updated*  `dev` (bool) **option, default false**  - *if true, bypass publishes and only use newest resource (set of key/values)*   #### Response codes(s)  `200` OK  `404` platform not found
     - responseHeaders: [Server(String), Transfer-Encoding(String), Connection(String), Cache-Control(String), Date(String)]
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Indexresource> 
     */
    open class func indexresourceWithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Indexresource> {
        let path = "/api/v2/content/localize/resources/platforms/mobile"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Indexresource>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Keys
     
     - parameter all: (query)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func keys(all: Bool, xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        keysWithRequestBuilder(all: all, xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Keys
     - GET /api/v1/localize/mobile/keys
     - #### Request details  Method:    `GET`  URL:    `/api/translate/{platform-slug}/keys`  #### Headers   `X-Application-Id`  `X-Rest-Api-Key`  `Accept-Language or X-Accept-Language`  #### Query params `section` (int/string) _id or slug_  `all` (bool) _true_  #### URL Params `platform-slug` (string) **required**  #### Response codes(s)  `200` OK 
     - parameter all: (query)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func keysWithRequestBuilder(all: Bool, xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v1/localize/mobile/keys"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "all": all.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Keys&valuesforsection
     
     - parameter acceptLanguage: (header)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func keysvaluesforsection(acceptLanguage: String, xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UntitledExample?,_ error: Error?) -> Void)) {
        keysvaluesforsectionWithRequestBuilder(acceptLanguage: acceptLanguage, xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Keys&valuesforsection
     - GET /api/v1/localize/backend/keys/default
     - Keys & values for section
     - responseHeaders: [Cache-Control(String), Connection(String), Content-Length(String), Date(String), Keep-Alive(String), Server(String)]
     - parameter acceptLanguage: (header)  
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<UntitledExample> 
     */
    open class func keysvaluesforsectionWithRequestBuilder(acceptLanguage: String, xApplicationId: String, xRestApiKey: String) -> RequestBuilder<UntitledExample> {
        let path = "/api/v1/localize/backend/keys/default"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Accept-Language": acceptLanguage.encodeToJSON(),
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UntitledExample>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Languagebestfit
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func languagebestfit(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Languagebestfit?,_ error: Error?) -> Void)) {
        languagebestfitWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Languagebestfit
     - GET /api/v2/content/localize/mobile/languages/best_fit
     - Get best fit language from accept-language header  #### Request details Method:    `GET`  URL:    `/api/v1/content/localize/{platform-slug}/languages/best_fit`  #### Headers  `X-Application-Id`  `X-Rest-Api-Key`  `Accept-Language or X-Accept-Language`  #### URL Parameters `platform-slug` (string) **required**  #### Response codes(s)  `200` OK  `404` Entity not found
     - responseHeaders: [Server(String), Transfer-Encoding(String), Connection(String), Cache-Control(String), Date(String)]
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Languagebestfit> 
     */
    open class func languagebestfitWithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Languagebestfit> {
        let path = "/api/v2/content/localize/mobile/languages/best_fit"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "X-Application-Id": xApplicationId.encodeToJSON(),
            "X-Rest-Api-Key": xRestApiKey.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Languagebestfit>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Languagebestfit1
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func languagebestfit1(xApplicationId: String, xRestApiKey: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        languagebestfit1WithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Languagebestfit1
     - GET /api/v1/localize/mobile/languages/best_fit
     - Get best fit language from accept-language header  #### Request details Method:    `GET`  URL:    `/api/v1/translate/{platform-slug}/languages/best_fit`  #### Headers  `X-Application-Id`  `X-Rest-Api-Key`  `Accept-Language or X-Accept-Language`  #### URL Parameters `platform-slug` (string) **required**  #### Response codes(s)  `200` OK 
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - returns: RequestBuilder<Void> 
     */
    open class func languagebestfit1WithRequestBuilder(xApplicationId: String, xRestApiKey: String) -> RequestBuilder<Void> {
        let path = "/api/v1/localize/mobile/languages/best_fit"
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
     Showresource
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func showresource(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Showresource?,_ error: Error?) -> Void)) {
        showresourceWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Showresource
     - GET /api/v2/content/localize/resources/44
     - #### Request details  Method:    `GET`  URL:    `/api/v2/content/localize/resources/{id}`  #### Response codes(s)  `200` OK  `404` Not found
     - responseHeaders: [Server(String), Transfer-Encoding(String), Connection(String), Cache-Control(String), Date(String)]
     - returns: RequestBuilder<Showresource> 
     */
    open class func showresourceWithRequestBuilder() -> RequestBuilder<Showresource> {
        let path = "/api/v2/content/localize/resources/44"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Showresource>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Storeproposal
     
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter key: (form)  
     - parameter value: (form)  
     - parameter locale: (form)  
     - parameter platform: (form)  
     - parameter guid: (form)  
     - parameter section: (form)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func storeproposal(xApplicationId: String, xRestApiKey: String, key: String, value: String, locale: String, platform: String, guid: String, section: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        storeproposalWithRequestBuilder(xApplicationId: xApplicationId, xRestApiKey: xRestApiKey, key: key, value: value, locale: locale, platform: platform, guid: guid, section: section).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Storeproposal
     - POST /api/v2/content/localize/proposals
     - #### Request details  Method:    `POST`  URL:    `/api/v2/content/localize/proposals`  #### Post params `key` (string) **required**   `section` (string) **required**   `value` (string) **required**   `locale` (string) **required**  *eg: da-DK, en-GB*  `platform` (string) **required** *eg: mobile, backend, web*  #### Response codes(s)  `201` Created  `412` Preconitions failed
     - parameter xApplicationId: (header)  
     - parameter xRestApiKey: (header)  
     - parameter key: (form)  
     - parameter value: (form)  
     - parameter locale: (form)  
     - parameter platform: (form)  
     - parameter guid: (form)  
     - parameter section: (form)  
     - returns: RequestBuilder<Void> 
     */
    open class func storeproposalWithRequestBuilder(xApplicationId: String, xRestApiKey: String, key: String, value: String, locale: String, platform: String, guid: String, section: String) -> RequestBuilder<Void> {
        let path = "/api/v2/content/localize/proposals"
        let URLString = OpenAPIClientAPI.basePath + path
        let formParams: [String:Any?] = [
            "key": key.encodeToJSON(),
            "value": value.encodeToJSON(),
            "locale": locale.encodeToJSON(),
            "platform": platform.encodeToJSON(),
            "guid": guid.encodeToJSON(),
            "section": section.encodeToJSON()
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
