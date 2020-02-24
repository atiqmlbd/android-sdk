//
// Login.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Login: Codable {

    public var title: String
    public var email: String
    public var emailPlaceholder: String
    public var password: String
    public var passwordPlaceholder: String
    public var forgotButton: String
    public var authFailed: String
    public var loginButton: String
    public var yourEmail: String
    public var confirm: String
    public var forgot: String
    public var login: String
    public var invalidTitle: String
    public var invalidBody: String
    public var dontHaveAnAccount: String

    public init(title: String, email: String, emailPlaceholder: String, password: String, passwordPlaceholder: String, forgotButton: String, authFailed: String, loginButton: String, yourEmail: String, confirm: String, forgot: String, login: String, invalidTitle: String, invalidBody: String, dontHaveAnAccount: String) {
        self.title = title
        self.email = email
        self.emailPlaceholder = emailPlaceholder
        self.password = password
        self.passwordPlaceholder = passwordPlaceholder
        self.forgotButton = forgotButton
        self.authFailed = authFailed
        self.loginButton = loginButton
        self.yourEmail = yourEmail
        self.confirm = confirm
        self.forgot = forgot
        self.login = login
        self.invalidTitle = invalidTitle
        self.invalidBody = invalidBody
        self.dontHaveAnAccount = dontHaveAnAccount
    }

}
