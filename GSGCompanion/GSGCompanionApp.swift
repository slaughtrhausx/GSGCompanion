//
//  GSGCompanionApp.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/6/22.
//

import SwiftUI


extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

@main
struct GSGCompanionApp: App {
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView()
            }
        }
    }
}
struct GSGCompanionApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.init()
    }
}
