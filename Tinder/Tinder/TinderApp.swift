//
//  TinderApp.swift
//  Tinder
//
//  Created by MeTaLlOiD on 30/08/24.
//

import SwiftUI

@main
struct TinderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CardStackView()
        }
    }
}
