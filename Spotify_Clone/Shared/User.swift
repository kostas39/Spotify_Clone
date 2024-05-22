//
//  User.swift
//  Spotify_Clone
//
//  Created by Kostas Koliolios on 24/04/2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
    
    static var mock: User {
        User (
            id: 444,
            firstName: "Kostas",
            lastName: "Koliolios",
            age: 76,
            email: "hi@hi.com",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            height: 180,
            weight: 200
        )
    }

}
