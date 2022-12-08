//
//  DeckView.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/9/22.
//

import SwiftUI

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(x: 0, y: offset * 10)
    }
}



struct DeckView: View {
    
    @State private var isActive = true
    @State private var cards = [CardData]()
    
    @ObservedObject var deckViewModel: DeckViewModel
    
    
    func removeCard(at index: Int) {
        guard index >= 0 else { return }
        
        cards.remove(at: index)
        
        if cards.isEmpty {
            isActive = false
        }
    }
    
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack() {
                Text(deckViewModel.cardsArray.first!.artistName)
                    .foregroundColor(.yellow)
                    .font(.custom("Revalia", size: 28))
                    .multilineTextAlignment(.center)
                Text(deckViewModel.cardsArray.first!.jamStrategy)
                    .foregroundColor(.black)
                    .font(.custom("Revalia", size: 28))
                    .multilineTextAlignment(.center)
               CardView(deckViewModel: DeckViewModel())
                       
                            .onShake {
                                deckViewModel.deckShuffle()
                                
                            }
                        Spacer()
                    }
                    .padding()
        }
    }
}
struct DeckView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView(deckViewModel: DeckViewModel())
    }
}
