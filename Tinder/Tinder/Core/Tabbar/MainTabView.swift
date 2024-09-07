//
//  MainTabView.swift
//  Tinder
//
//  Created by MeTaLlOiD on 03/09/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Swiping View")
                .tabItem {
                    Image(systemName: "flame")
                }
                .tag(0)
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            Text("Inbox View")
                .tabItem {
                    Image(systemName: "bubble.left")
                }
                .tag(2)
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(3)
        }
        .tint(.primary)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
