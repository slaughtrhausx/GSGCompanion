//
//  CardView.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/10/22.
//

import SwiftUI

struct CardView: View {
    @State private var isActive = true
    @State private var cards = [CardData]()
    func removeCard(at index: Int) {
        guard index >= 0 else { return }
        
        cards.remove(at: index)
        
        if cards.isEmpty {
            isActive = false
        }
    }
    
    
    @ObservedObject var deckViewModel: DeckViewModel
    
    var body: some View {
        //        ForEach(0..<deckViewModel.cardsArray.count, id: \.self) { index in
        //            DeckViewModel(deckViewModel.cardsArray[index]) {
        //                withAnimation {
        //                    removeCard(at: index)
        //                }
        //            }
        //        }
        Image(deckViewModel.cardsArray.first!.imageName)
            .resizable()
        
            .scaledToFit()
            .cornerRadius(25)
            .padding(.top, 10.0)
            .aspectRatio(contentMode: .fit)
            .frame(minWidth: 200, maxWidth: 375, maxHeight: 525)
        //                                    .stacked(at: deckViewModel.cardsArray.index, in: deckViewModel.cardsArray.count)
        //                                    .allowsHitTesting(deckViewModel.cardsArray.index == deckViewModel.cardsArray.count - 1)
        //                                    .accessibilityHidden(deckViewModel.cardsArray.index < deckViewModel.cardsArray.count - 1)
        //                        }
        //                    }
        //                }
    }
    
    
    struct CardView_Previews: PreviewProvider {
        @ObservedObject var deckViewModel: DeckViewModel
        static var previews: some View {
            CardView(deckViewModel: DeckViewModel())
        }
    }
}
