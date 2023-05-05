//
//  User.swift
//  111
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct User: Codable, Identifiable {
    var gender: String
    var name: UserName
    var location: UserLocation
    var email: String
    var login: UserLogin
    var dob: UserDob
    var registered: UserRegistered
    var phone: String
    var cell: String
    var picture: UserPicture
    
    var fullName: String {
    name.first + " " + name.last
    }
    
    var id: String {
        login.uuid
    }
    
    var largePictureURL: URL? {
        URL(string: picture.large)
    }
    
    var mediumPictureURL: URL? {
        URL(string: picture.medium)
    }
    
    var thumbnailPictureURL: URL? {
        URL(string: picture.thumbnail)
    }
    
    static var mockUser: User {
        User(
            gender: "Female",
            name: UserName(
                title: "Miss",
                first: "Sun",
                last: "Kang"
            ),
            location: UserLocation(
                street: UserStreet(
                    number: 38,
                    name: "cobourg lane"
                ),
                city: "Stratford",
                state: "Ontario",
                country: "Canada",
                timezone: UserTimezone(
                    offset: "+09:30",
                    description: "Adelaide, Darwin"
                )
            ),
            email: "Sun@test.com",
            login: UserLogin(uuid: "12345"),
            dob: UserDob(age: 40),
            registered: UserRegistered(age: 38),
            phone: "123-123-1234",
            cell: "234-234-2345",
            picture: UserPicture(
                large: "",
                medium: "",
                thumbnail: ""
            )
        )
    }
}

struct UserName: Codable {
    var title: String
    var first: String
    var last: String
}

struct UserLocation: Codable {
    var street: UserStreet
    var city: String
    var state: String
    var country: String
    var timezone: UserTimezone
}

struct UserStreet: Codable {
    var number: Int
    var name: String
}

struct UserTimezone: Codable {
    var offset: String
    var description: String
}

struct UserLogin: Codable {
    var uuid: String
}

struct UserDob: Codable {
    var age: Int
}

struct UserRegistered: Codable {
    var age: Int
}

struct UserPicture: Codable {
    var large: String
    var medium: String
    var thumbnail: String
}
