//  CardModel.swift
//  GSGCompanion
//  Created by Sean Bartley on 12/6/22.

import SwiftUI
struct CardData: Identifiable {
    let id = UUID().uuidString
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
    
    
    
    
   // @Published var cardsArray: [CardData] = []
        
        
       
            
}
class DeckViewModel: ObservableObject {
    @Published var cardsArray: [CardData] = []
    @Published var isLoading: Bool = false
    init() {
        getCards()
    }
    
    func getCards() {
        
        let cardArray = [
        
        CardData(cardNum: 000,
                 artistName: "Golden Shrimp Guild",
                 imageName: "cardBackCard",
                 jamStrategy: "WHAT STRATEGY WILL YOU USE?"),
        
        CardData(cardNum: 001,
                 artistName: "TotoRobyn",
                 imageName: "totoRobynCard",
                 jamStrategy: "Change your attack."),
        
        CardData(cardNum: 002,
                 artistName: "TheGracefulBard",
                 imageName: "theGracefulBardCard",
                 jamStrategy: "Do your best to mimic a non-musical object."),
        
        CardData(cardNum: 003,
                 artistName: "SetZero",
                 imageName: "setZeroCard",
                 jamStrategy: "Filter your drums."),
        
        CardData(cardNum: 004,
                 artistName: "Litui",
                 imageName: "lituiCard",
                 jamStrategy: "Pick 3 knobs at random and turn them each 30 degrees."),
        
        CardData(cardNum: 005,
                 artistName: "The Entire Robot",
                 imageName: "theEntireRobotCard",
                 jamStrategy: "Make the bass the protagonist of your music."),
        
        CardData(cardNum: 006,
                 artistName: "Frost",
                 imageName: "frostCard",
                 jamStrategy: "Add feeling, play it live."),
        
        CardData(cardNum: 007,
                 artistName: "A Thousand Details",
                 imageName: "aThousandDetailsCard",
                 jamStrategy: "Add a new person to the music with sampling, irl, ninjam, etc."),
        
        CardData(cardNum: 008,
                 artistName: "PHOBoS",
                 imageName: "phobosCard",
                 jamStrategy: "The end is the beginning."),
        
        CardData(cardNum: 009,
                 artistName: "Scott Danesi",
                 imageName: "scottDanesiCard",
                 jamStrategy: "Make a mistake, loop it, and sidechain it."),
        
        CardData(cardNum: 010,
                 artistName: "DNKTRL",
                 imageName: "dnktrlCard",
                 jamStrategy: "Change the BPM: add/subtract the current date."),
        
        CardData(cardNum: 011,
                 artistName: "Your Opponent",
                 imageName: "yourOpponentCard",
                 jamStrategy: "Use nothing but percussion or percussive sounds."),
        
        CardData(cardNum: 012,
                 artistName: "calus001",
                 imageName: "calus001Card",
                 jamStrategy: "Use a cheesy or outdated piece of gear."),
        
        CardData(cardNum: 013,
                 artistName: "Ix Studios",
                 imageName: "ixStudiosCard",
                 jamStrategy: "Go off-genre and forget about genre altogether."),
        
        CardData(cardNum: 014,
                 artistName: "Professor Dictabeat",
                 imageName: "professorDictabeatCard",
                 jamStrategy: "Fatten the basslines."),
        
        CardData(cardNum: 015,
                 artistName: "Information Tray",
                 imageName: "informationTrayCard",
                 jamStrategy: "Distort something."),
        
        CardData(cardNum: 016,
                 artistName: "Open Set",
                 imageName: "openSetCard",
                 jamStrategy: "Build a storm. Then find the calm in the eye."),
        
        CardData(cardNum: 017,
                 artistName: "Temposloth",
                 imageName: "temposlothCard",
                 jamStrategy: "Mangle the sample."),
        
        CardData(cardNum: 018,
                 artistName: "SenseNet",
                 imageName: "sensenetCard",
                 jamStrategy: "Go drone: reduce everything to one single note."),
        
        CardData(cardNum: 19,
                 artistName: "Actitect",
                 imageName: "actitectCard",
                 jamStrategy: "Fade out all drums and focus on tonal aesthetics for about 8 minutes."),
        
        CardData(cardNum: 020,
                 artistName: "Analog Feels",
                 imageName: "analogFeelsCard",
                 jamStrategy: "Push it to the limit."),
        
        CardData(cardNum: 021,
                 artistName: "Synth Lab",
                 imageName: "synthlabCard",
                 jamStrategy: "Remove patch cables and put knobs to default position."),
        
        CardData(cardNum: 022,
                 artistName: "effin_izzy",
                 imageName: "effinIzzyCard",
                 jamStrategy: "Think of the structure of the jam and apply it."),
        
        CardData(cardNum: 023,
                 artistName: "dquil_live",
                 imageName: "dquilLiveCard",
                 jamStrategy: "Remove all but 2 elements."),
        
        CardData(cardNum: 024,
                 artistName: "Devolta",
                 imageName: "devoltaCard",
                 jamStrategy: "Heavily alter the synth sound without touching the filter."),
        
        CardData(cardNum: 025,
                 artistName: "ONEvsZero",
                 imageName: "onevszeroCard",
                 jamStrategy: "Play your cheapest piece of gear and make it sound expensive."),
        
        CardData(cardNum: 026,
                 artistName: "Sietse Bruggeling",
                 imageName: "sietseBruggelingCard",
                 jamStrategy: "Add FM or half the tempo."),
        
        CardData(cardNum: 027,
                 artistName: "Lazer Show Defex",
                 imageName: "lazerShowDefexCard",
                 jamStrategy: "Play blindfolded for 10 minutes."),
        
        CardData(cardNum: 028,
                 artistName: "The Killer Bee Relay Team",
                 imageName: "theKillerBeeRelayTeamCard",
                 jamStrategy: "Do it 5 times. Combine the best and worst versions."),
        
        CardData(cardNum: 029,
                 artistName: "Mr. X - Wolfgang Merx",
                 imageName: "mrXCard",
                 jamStrategy: "Play a solo."),
        
        CardData(cardNum: 030,
                 artistName: "Drum_Operator",
                 imageName: "drumOperatorCard",
                 jamStrategy: "Ping your favorite filter as a source of sound."),
        
        CardData(cardNum: 031,
                 artistName: "mOOnhouse",
                 imageName: "moonhouseCard",
                 jamStrategy: "Create a lead with an unconventional controller: a.k.a. no keyoard."),
        
        CardData(cardNum: 032,
                 artistName: "subwalkers",
                 imageName: "subwalkersCard",
                 jamStrategy: "Play the drums live and use/loop the result."),
        
        CardData(cardNum: 033,
                 artistName: "wombra",
                 imageName: "wombraCard",
                 jamStrategy: "CRUCIAL PASSAGE"),
        
        CardData(cardNum: 034,
                 artistName: "slaughtrhaus",
                 imageName: "slaughtrhausCard",
                 jamStrategy: "Touch grass."),
        
        CardData(cardNum: 035,
                 artistName: "302_Dave",
                 imageName: "302daveCard",
                 jamStrategy: "Change the key but leave one melodic phrase unchanged."),
        
        CardData(cardNum: 036,
                 artistName: "Dr. Squeakers",
                 imageName: "drSqeakersCard",
                 jamStrategy: "Play your instrument the 'wrong' way."),
        
        CardData(cardNum: 037,
                 artistName: "BleepTemple",
                 imageName: "bleeptempleCard",
                 jamStrategy: "Solo your kick. Adjust it until your head bops."),
        
        CardData(cardNum: 038,
                 artistName: "5QRL",
                 imageName: "sqrlCard",
                 jamStrategy: "Make it heavier."),
        
        CardData(cardNum: 039,
                 artistName: "Bubblegum Nihilists",
                 imageName: "bubblegumNihilistCard",
                 jamStrategy: "Hold a single note and change everything around it."),
        
        CardData(cardNum: 040,
                 artistName: "Chumslick",
                 imageName: "chumslickCard",
                 jamStrategy: "Get polyrhythmic."),
        
        CardData(cardNum: 041,
                 artistName: "dank_live_af",
                 imageName: "dankLiveAfCard",
                 jamStrategy: "Put the kick and bass in stereo."),
        
        CardData(cardNum: 042,
                 artistName: "The Sound Serum",
                 imageName: "theSoundSerumCard",
                 jamStrategy: "As though from another universe."),
        
        CardData(cardNum: 043,
                 artistName: "MaZmiTh",
                 imageName: "mazmithCard",
                 jamStrategy: "Incorporate at least one odd timing."),
        
        CardData(cardNum: 044,
                 artistName: "Solvognen",
                 imageName: "solvognenCard",
                 jamStrategy: "Build a sequence without listening to it."),
        
        CardData(cardNum: 045,
                 artistName: "Beta Units",
                 imageName: "betaUnitsCard",
                 jamStrategy: "Clear half of your patterns after a great solo."),
        
        CardData(cardNum: 046,
                 artistName: "LUVU",
                 imageName: "luvuCard",
                 jamStrategy: "Make it about love."),
        
        CardData(cardNum: 047,
                 artistName: "SPRK",
                 imageName: "sprkCard",
                 jamStrategy: "!esrever dias I, esreveR"),
        
        CardData(cardNum: 048,
                 artistName: "Brandon Stargrave",
                 imageName: "brandonStargraveCard",
                 jamStrategy: "Make it weird, then make it weirder."),
        
        CardData(cardNum: 049,
                 artistName: "Statrax",
                 imageName: "statraxCard",
                 jamStrategy: "Discard the last layer you created and replace it by another device."),
        
        CardData(cardNum: 050,
                 artistName: "Tin Can Synth Jam",
                 imageName: "tinCanSynthJamCard",
                 jamStrategy: "Filter everything, push the resonance."),
        
        CardData(cardNum: 051,
                 artistName: "Abstract amcr",
                 imageName: "abstractamcrCard",
                 jamStrategy: "Add some space whales."),
        
        CardData(cardNum: 052,
                 artistName: "Purple Bee TV",
                 imageName: "purpleBeeTvCard",
                 jamStrategy: "Beatbox your drum beat."),
        
        CardData(cardNum: 053,
                 artistName: "Syd Heresy",
                 imageName: "sydHeresyCard",
                 jamStrategy: "Worship the glitch."),
        
        CardData(cardNum: 054,
                 artistName: "Aaron Goldberg",
                 imageName: "aaronGoldbergCard",
                 jamStrategy: "Use one instrument in as many ways as possible."),
        
        CardData(cardNum: 055,
                 artistName: "AwktOpus |IOU Studio|",
                 imageName: "awktopusIouStudioCard",
                 jamStrategy: "Create a deeper hidden meaning: put a little secret in the music."),
        
        CardData(cardNum: 056,
                 artistName: "Lyli J",
                 imageName: "lyliJCard",
                 jamStrategy: "Slow down. Stretch. Sing mantras over everything."),
        
        CardData(cardNum: 057,
                 artistName: "CakeFlaps",
                 imageName: "cakeflapsCard",
                 jamStrategy: "Only keep the least essential element and build something new on top."),
        
        CardData(cardNum: 058,
                 artistName: "BardicPerspiration",
                 imageName: "bardicPerspirationCard",
                 jamStrategy: "Tell a tale about your jam. use your jam to tell a tale."),
        
        CardData(cardNum: 059,
                 artistName: "DreamCadaver",
                 imageName: "dreamCadaverCard",
                 jamStrategy: "Transform into its opposite and juxtapose the two."),
        
        CardData(cardNum: 060,
                 artistName: "JB Noise",
                 imageName: "jbNoiseCard",
                 jamStrategy: "Play in two complimentary keys at once."),
        
        CardData(cardNum: 061,
                 artistName: "Woke-Ass Messiah",
                 imageName: "wokeAssMessiahCard",
                 jamStrategy: "Stimulate or utilize a commonly unused input."),
        
        CardData(cardNum: 062,
                 artistName: "Sunshine [at Night]",
                 imageName: "sunshineAtNightCard",
                 jamStrategy: "Replace your kick drum and your longest running sequence."),
        
        CardData(cardNum: 063,
                 artistName: "psynthesys",
                 imageName: "pysnthesysCard",
                 jamStrategy: "Take a low pass deep into the abyss."),
        
        CardData(cardNum: 064,
                 artistName: "Bai-ee",
                 imageName: "baieeCard",
                 jamStrategy: "Introduce an acid bassline."),
        
        CardData(cardNum: 065,
                 artistName: "neonhaus",
                 imageName: "neonhausCard",
                 jamStrategy: "Play the tuning knob.")
    ]
        
        self.cardsArray.append(contentsOf: cardArray)
    }
    
    //class ShuffleDeck: ObservableObject {
           func deckShuffle() {
                   cardsArray.shuffle()
               }

   
    }
    
    






    struct CardModel_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

