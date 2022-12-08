//
//  GSGCompanionApp.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/6/22.
//

import SwiftUI

@main
struct GSGCompanionApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                
                ContentView()
                    .tabItem {
                        Label("Card List", systemImage: "bird")
            }
                DeckView(deckViewModel: DeckViewModel())
                    .tabItem {
                        Label("Game Deck", systemImage: "house")
            }
                WebView()
                    .tabItem {
                        Label("gsg.live", systemImage: "tree")
            }
            }
            
        }
    }
}
