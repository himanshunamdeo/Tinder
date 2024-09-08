//
//  CardStackView.swift
//  Tinder
//
//  Created by MeTaLlOiD on 08/09/24.
//

import SwiftUI

struct CardStackView: View {
    @StateObject var cardViewModel = CardViewModel(service: CardService())
    
    var body: some View {
        ZStack {
            ForEach (cardViewModel.cardModels) { card in
                CardView(model: card)
            }
        }
    }
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView()
    }
}
