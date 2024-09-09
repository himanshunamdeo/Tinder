//
//  User.swift
//  Tinder
//
//  Created by MeTaLlOiD on 08/09/24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullName: String
    var age: Int
    var profileImageUrls: [String]
}
