//
//  ContentView.swift
//  Tinder
//
//  Created by MeTaLlOiD on 30/08/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
