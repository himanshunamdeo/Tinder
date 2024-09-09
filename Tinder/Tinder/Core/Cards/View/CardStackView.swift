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
                CardView(viewModel: cardViewModel, model: card)
            }
        }
        .onChange(of: cardViewModel.cardModels) { newValue in
            print(("New Value Count \(newValue.count)"))
        }
    }
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView()
    }
}
