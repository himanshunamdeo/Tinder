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

extension CardModel: Identifiable, Hashable {
    var id: String {
        return user.id
    }
}
