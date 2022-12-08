//
//  ContentView.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/6/22.
//

import SwiftUI

extension UIDevice {
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}

extension UIWindow {
     open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
    }
}

struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                action()
            }
    }
}

extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}

struct ContentView: View {
    
    @State private var showLoading: Bool = false
    
    var body: some View {
        TabView {
            
            CardListView()
                .tabItem {
                    Label("Card List", systemImage: "bird")
        }
            DeckView(deckViewModel: DeckViewModel())
                .tabItem {
                    Label("Game Deck", systemImage: "house")
        }
            WebView(url:  URL(string: "https://gsg.live")!, showLoading: $showLoading)
                          .overlay(showLoading ? ProgressView("Loading...").toAnyView():
                                       EmptyView().toAnyView())
                .tabItem {
                    Label("gsg.live", systemImage: "tree")
        }
        }
        }
        }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.init()
    }
}
