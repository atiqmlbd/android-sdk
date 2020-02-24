//
// Update.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Update: Codable {

    public var newerVersion: NewerVersion

    public init(newerVersion: NewerVersion) {
        self.newerVersion = newerVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case newerVersion = "newer_version"
    }

}
