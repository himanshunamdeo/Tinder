//
//  CardService.swift
//  Tinder
//
//  Created by MeTaLlOiD on 08/09/24.
//

import Foundation

struct CardService {
    
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0 )})
    }
}
