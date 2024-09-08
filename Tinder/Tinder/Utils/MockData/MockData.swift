//
//  MockData.swift
//  Tinder
//
//  Created by MeTaLlOiD on 08/09/24.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        
        .init(id: UUID().uuidString, fullName: "Megan Fox", age: 37, profileImageUrls: ["GirlOnBeach", "blueButterflyGirl", "butterflyGirl"]),
        .init(id: UUID().uuidString, fullName: "Anar Kali", age: 30, profileImageUrls: ["girlWithGlasses", "spaceGirl", "tombRaider"]),
        .init(id: UUID().uuidString, fullName: "Mohan Bhargav", age: 37, profileImageUrls: ["boy", "ManBunBoy", "luffy"]),
        .init(id: UUID().uuidString, fullName: "Emma Watson", age: 37, profileImageUrls: ["emoGirl", "woman", "indianGirl"])
    
    ]
}
