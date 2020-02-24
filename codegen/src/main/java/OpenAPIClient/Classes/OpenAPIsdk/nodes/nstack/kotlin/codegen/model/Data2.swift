//
// Data2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Data2: Codable {

    public var _default: Default
    public var settings: Settings
    public var welcome: Welcome
    public var createUser1: CreateUser1
    public var createUser2: CreateUser2
    public var login: Login
    public var forgotPassword: ForgotPassword
    public var language: Language1
    public var pushNotifications: PushNotifications
    public var user: User
    public var news: News
    public var discover: Discover
    public var feed: Feed
    public var editProfile: EditProfile
    public var changePassword: ChangePassword
    public var createNewPost: CreateNewPost
    public var suggestUsers: SuggestUsers
    public var editImage: EditImage
    public var errors: Errors
    public var bodyPart: BodyPart
    public var search: Search
    public var userList: UserList
    public var createNewPostDescription: CreateNewPostDescription
    public var article: Article
    public var comments: Comments
    public var activity: Activity
    public var accessCode: AccessCode
    public var filters: Filters
    public var introtour: Introtour
    public var createUser3: CreateUser3
    public var pin: Pin
    public var shortcutMenu: ShortcutMenu
    public var landing: Landing
    public var signUp: SignUp
    public var artist: Artist
    public var shop: Shop
    public var reports: Reports
    public var ratingPrompt: RatingPrompt
    public var tattoos: Tattoos
    public var communication: Communication
    public var error: ModelError
    public var meta: Meta1
    public var post: Post
    public var people: People
    public var booking: Booking
    public var endOfFeed: EndOfFeed

    public init(_default: Default, settings: Settings, welcome: Welcome, createUser1: CreateUser1, createUser2: CreateUser2, login: Login, forgotPassword: ForgotPassword, language: Language1, pushNotifications: PushNotifications, user: User, news: News, discover: Discover, feed: Feed, editProfile: EditProfile, changePassword: ChangePassword, createNewPost: CreateNewPost, suggestUsers: SuggestUsers, editImage: EditImage, errors: Errors, bodyPart: BodyPart, search: Search, userList: UserList, createNewPostDescription: CreateNewPostDescription, article: Article, comments: Comments, activity: Activity, accessCode: AccessCode, filters: Filters, introtour: Introtour, createUser3: CreateUser3, pin: Pin, shortcutMenu: ShortcutMenu, landing: Landing, signUp: SignUp, artist: Artist, shop: Shop, reports: Reports, ratingPrompt: RatingPrompt, tattoos: Tattoos, communication: Communication, error: ModelError, meta: Meta1, post: Post, people: People, booking: Booking, endOfFeed: EndOfFeed) {
        self._default = _default
        self.settings = settings
        self.welcome = welcome
        self.createUser1 = createUser1
        self.createUser2 = createUser2
        self.login = login
        self.forgotPassword = forgotPassword
        self.language = language
        self.pushNotifications = pushNotifications
        self.user = user
        self.news = news
        self.discover = discover
        self.feed = feed
        self.editProfile = editProfile
        self.changePassword = changePassword
        self.createNewPost = createNewPost
        self.suggestUsers = suggestUsers
        self.editImage = editImage
        self.errors = errors
        self.bodyPart = bodyPart
        self.search = search
        self.userList = userList
        self.createNewPostDescription = createNewPostDescription
        self.article = article
        self.comments = comments
        self.activity = activity
        self.accessCode = accessCode
        self.filters = filters
        self.introtour = introtour
        self.createUser3 = createUser3
        self.pin = pin
        self.shortcutMenu = shortcutMenu
        self.landing = landing
        self.signUp = signUp
        self.artist = artist
        self.shop = shop
        self.reports = reports
        self.ratingPrompt = ratingPrompt
        self.tattoos = tattoos
        self.communication = communication
        self.error = error
        self.meta = meta
        self.post = post
        self.people = people
        self.booking = booking
        self.endOfFeed = endOfFeed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case _default = "default"
        case settings
        case welcome
        case createUser1
        case createUser2
        case login
        case forgotPassword
        case language
        case pushNotifications
        case user
        case news
        case discover
        case feed
        case editProfile
        case changePassword
        case createNewPost
        case suggestUsers
        case editImage
        case errors
        case bodyPart
        case search
        case userList
        case createNewPostDescription
        case article
        case comments
        case activity
        case accessCode
        case filters
        case introtour
        case createUser3
        case pin
        case shortcutMenu
        case landing
        case signUp
        case artist
        case shop
        case reports
        case ratingPrompt
        case tattoos
        case communication
        case error
        case meta
        case post
        case people
        case booking
        case endOfFeed
    }

}
