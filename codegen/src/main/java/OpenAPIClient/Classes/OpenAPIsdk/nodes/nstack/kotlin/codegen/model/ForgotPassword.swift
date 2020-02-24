//
// ForgotPassword.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ForgotPassword: Codable {

    public var title: String
    public var message: String
    public var email: String
    public var emailPlaceholder: String
    public var button: String
    public var emailNotFound: String
    public var emailSent: String
    public var invalidEmail: String
    public var emailHasBeenSent: String
    public var instructions: String
    public var backToLogin: String

    public init(title: String, message: String, email: String, emailPlaceholder: String, button: String, emailNotFound: String, emailSent: String, invalidEmail: String, emailHasBeenSent: String, instructions: String, backToLogin: String) {
        self.title = title
        self.message = message
        self.email = email
        self.emailPlaceholder = emailPlaceholder
        self.button = button
        self.emailNotFound = emailNotFound
        self.emailSent = emailSent
        self.invalidEmail = invalidEmail
        self.emailHasBeenSent = emailHasBeenSent
        self.instructions = instructions
        self.backToLogin = backToLogin
    }

}
