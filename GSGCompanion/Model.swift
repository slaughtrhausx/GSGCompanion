//  CardModel.swift
//  GSGCompanion
//  Created by Sean Bartley on 12/6/22.

import SwiftUI
struct CardData: Codable, Identifiable {
    var id = UUID().uuidString
    let cardNum: Int
    let artistName: String
    let imageName: String
    let jamStrategy: String
    
    init(cardNum: Int, artistName: String, imageName: String, jamStrategy: String) {
        self.cardNum = cardNum
        self.artistName = artistName
        self.imageName = imageName
        self.jamStrategy = jamStrategy
    }
}

class DeckModel: ObservableObject {
    @Published var cardNum = [Int]()
    @Published var artistName = [String]()
    @Published var imagename = [String]()
    @Published var jamStrategy = [String]()
    
}
