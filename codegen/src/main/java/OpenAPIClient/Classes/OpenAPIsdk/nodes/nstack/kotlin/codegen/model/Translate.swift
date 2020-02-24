//
// Translate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Translate: Codable {

    public var title: String
    public var message: String
    public var positiveBtn: String
    public var negativeBtn: String

    public init(title: String, message: String, positiveBtn: String, negativeBtn: String) {
        self.title = title
        self.message = message
        self.positiveBtn = positiveBtn
        self.negativeBtn = negativeBtn
    }

}
