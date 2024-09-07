//
//  TinderApp.swift
//  Tinder
//
//  Created by MeTaLlOiD on 07/09/24.
//

import SwiftUI

@main
struct TinderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
