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
        VStack {
            ZStack {
                ForEach (cardViewModel.cardModels) { card in
                    CardView(viewModel: cardViewModel, model: card)
                }
            }
            
            if !cardViewModel.cardModels.isEmpty {
                SwipeActionButtonView(viewModel: cardViewModel)
                    .padding(.top)
            }
        }
    }
}

struct CardStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView()
    }
}
