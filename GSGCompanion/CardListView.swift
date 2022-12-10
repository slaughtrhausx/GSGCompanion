//
//  CardListView.swift
//  GSGCompanion
//
//  Created by Sean Bartley on 12/9/22.
//

import SwiftUI

struct CardListView: View {
    
    @StateObject var deckViewModel: DeckViewModel = DeckViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(deckViewModel.cardsArray) { card in
                    HStack() {
                        VStack() {
                            Image(card.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 60)
                            Text("Card#\(card.cardNum)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        VStackLayout(alignment: .leading) {
                            Text(card.artistName)
                                .font(.custom("Revalia", size: 18))
                                .multilineTextAlignment(.center)
                                .padding(.leading)
                            
                            Text(card.jamStrategy)
                                .foregroundColor(.gray)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                                .padding(.top, -3.0)
                                .padding(.leading)
                            Spacer()
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Jam Strategy Cards")
            //.font(.custom("Revalia", size: 30))
            .scrollContentBackground(.hidden)
            .background {
               // Color.brown
                Image("bg")
                 .resizable()
                    .ignoresSafeArea()
            }
        }
    }
}
struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
    }
}
