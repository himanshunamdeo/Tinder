//
//  CardsViewModel.swift
//  Tinder
//
//  Created by MeTaLlOiD on 08/09/24.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardViewModel() }
    }
    
    func fetchCardViewModel() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch let error {
            print("Failed to fetch cards with error \(error.localizedDescription)")
        }
    }
}
