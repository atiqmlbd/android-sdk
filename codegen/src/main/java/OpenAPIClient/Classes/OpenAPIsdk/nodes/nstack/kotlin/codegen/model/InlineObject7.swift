//
// InlineObject7.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct InlineObject7: Codable {

    public var name: String
    public var tags: String
    public var goneAt: String

    public init(name: String, tags: String, goneAt: String) {
        self.name = name
        self.tags = tags
        self.goneAt = goneAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case name
        case tags
        case goneAt = "gone_at"
    }

}
