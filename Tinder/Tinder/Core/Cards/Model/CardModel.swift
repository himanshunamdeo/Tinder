//
//  CardModel.swift
//  Tinder
//
//  Created by MeTaLlOiD on 08/09/24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id: String {
        return user.id
    }
}
