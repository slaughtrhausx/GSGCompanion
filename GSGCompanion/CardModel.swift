//  CardModel.swift
//  GSGCompanion
//  Created by Sean Bartley on 12/6/22.

import SwiftUI
class Card: ObservableObject, Identifiable {
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
        }
            
struct CardModel: View {
    
    
    @State var cards = [
        
        Card(cardNum: 000,
             artistName: "Golden Shrimp Guild",
             imageName: "cardBackCard",
             jamStrategy: "WHAT STRATEGY WILL YOU USE?"),
        
        Card(cardNum: 001,
             artistName: "TotoRobyn",
             imageName: "totoRobynCard",
             jamStrategy: "Change your attack."),
        
        Card(cardNum: 002,
             artistName: "TheGracefulBard",
             imageName: "theGracefulBardCard",
             jamStrategy: "Do your best to mimic a non-musical object."),
        
        Card(cardNum: 003,
             artistName: "SetZero",
             imageName: "setZeroCard",
             jamStrategy: "Filter your drums."),
        
        Card(cardNum: 004,
             artistName: "Litui",
             imageName: "lituiCard",
             jamStrategy: "Pick 3 knobs at random and turn them each 30 degrees."),
        
        Card(cardNum: 005,
             artistName: "The Entire Robot",
             imageName: "theEntireRobotCard",
             jamStrategy: "Make the bass the protagonist of your music."),
        
        Card(cardNum: 006,
             artistName: "Frost",
             imageName: "frostCard",
             jamStrategy: "Add feeling, play it live."),
        
        Card(cardNum: 007,
             artistName: "A Thousand Details",
             imageName: "aThousandDetailsCard",
             jamStrategy: "Add a new person to the music with sampling, irl, ninjam, etc."),
        
        Card(cardNum: 008,
             artistName: "PHOBoS",
             imageName: "phobosCard",
             jamStrategy: "The end is the beginning."),
        
        Card(cardNum: 009,
             artistName: "Scott Danesi",
             imageName: "scottDanesiCard",
             jamStrategy: "Make a mistake, loop it, and sidechain it."),
        
        Card(cardNum: 010,
             artistName: "DNKTRL",
             imageName: "dnktrlCard",
             jamStrategy: "Change the BPM: add/subtract the current date."),
        
        Card(cardNum: 011,
             artistName: "Your Opponent",
             imageName: "yourOpponentCard",
             jamStrategy: "Use nothing but percussion or percussive sounds."),
        
        Card(cardNum: 012,
             artistName: "calus001",
             imageName: "calus001Card",
             jamStrategy: "Use a cheesy or outdated piece of gear."),
        
        Card(cardNum: 013,
             artistName: "Ix Studios",
             imageName: "ixStudiosCard",
             jamStrategy: "Go off-genre and forget about genre altogether."),
        
        Card(cardNum: 014,
             artistName: "Professor Dictabeat",
             imageName: "professorDictabeatCard",
             jamStrategy: "Fatten the basslines."),
        
        Card(cardNum: 015,
             artistName: "Information Tray",
             imageName: "informationTrayCard",
             jamStrategy: "Distort something."),
        
        Card(cardNum: 016,
             artistName: "Open Set",
             imageName: "openSetCard",
             jamStrategy: "Build a storm. Then find the calm in the eye."),
        
        Card(cardNum: 017,
             artistName: "Temposloth",
             imageName: "temposlothCard",
             jamStrategy: "Mangle the sample."),
        
        Card(cardNum: 018,
             artistName: "SenseNet",
             imageName: "sensenetCard",
             jamStrategy: "Go drone: reduce everything to one single note."),
        
        Card(cardNum: 19,
             artistName: "Actitect",
             imageName: "actitectCard",
             jamStrategy: "Fade out all drums and focus on tonal aesthetics for about 8 minutes."),
        
        Card(cardNum: 020,
             artistName: "Analog Feels",
             imageName: "analogFeelsCard",
             jamStrategy: "Push it to the limit."),
        
        Card(cardNum: 021,
             artistName: "Synth Lab",
             imageName: "synthlabCard",
             jamStrategy: "Remove patch cables and put knobs to default position."),
        
        Card(cardNum: 022,
             artistName: "effin_izzy",
             imageName: "effinIzzyCard",
             jamStrategy: "Think of the structure of the jam and apply it."),
        
        Card(cardNum: 023,
             artistName: "dquil_live",
             imageName: "dquilLiveCard",
             jamStrategy: "Remove all but 2 elements."),
        
        Card(cardNum: 024,
             artistName: "Devolta",
             imageName: "devoltaCard",
             jamStrategy: "Heavily alter the synth sound without touching the filter."),
        
        Card(cardNum: 025,
             artistName: "ONEvsZero",
             imageName: "onevszeroCard",
             jamStrategy: "Play your cheapest piece of gear and make it sound expensive."),
        
        Card(cardNum: 026,
             artistName: "Sietse Bruggeling",
             imageName: "sietseBruggelingCard",
             jamStrategy: "Add FM or half the tempo."),
        
        Card(cardNum: 027,
             artistName: "Lazer Show Defex",
             imageName: "lazerShowDefexCard",
             jamStrategy: "Play blindfolded for 10 minutes."),
        
        Card(cardNum: 028,
             artistName: "The Killer Bee Relay Team",
             imageName: "theKillerBeeRelayTeamCard",
             jamStrategy: "Do it 5 times. Combine the best and worst versions."),
        
        Card(cardNum: 029,
             artistName: "Mr. X - Wolfgang Merx",
             imageName: "mrXCard",
             jamStrategy: "Play a solo."),
        
        Card(cardNum: 030,
             artistName: "Drum_Operator",
             imageName: "drumOperatorCard",
             jamStrategy: "Ping your favorite filter as a source of sound."),
        
        Card(cardNum: 031,
             artistName: "mOOnhouse",
             imageName: "moonhouseCard",
             jamStrategy: "Create a lead with an unconventional controller: a.k.a. no keyoard."),
        
        Card(cardNum: 032,
             artistName: "subwalkers",
             imageName: "subwalkersCard",
             jamStrategy: "Play the drums live and use/loop the result."),
        
        Card(cardNum: 033,
             artistName: "wombra",
             imageName: "wombraCard",
             jamStrategy: "CRUCIAL PASSAGE"),
        
        Card(cardNum: 034,
             artistName: "slaughtrhaus",
             imageName: "slaughtrhausCard",
             jamStrategy: "Touch grass."),
        
        Card(cardNum: 035,
             artistName: "302_Dave",
             imageName: "302daveCard",
             jamStrategy: "Change the key but leave one melodic phrase unchanged."),
        
        Card(cardNum: 036,
             artistName: "Dr. Squeakers",
             imageName: "drSqeakersCard",
             jamStrategy: "Play your instrument the 'wrong' way."),
        
        Card(cardNum: 037,
             artistName: "BleepTemple",
             imageName: "bleeptempleCard",
             jamStrategy: "Solo your kick. Adjust it until your head bops."),
        
        Card(cardNum: 038,
             artistName: "5QRL",
             imageName: "sqrlCard",
             jamStrategy: "Make it heavier."),
        
        Card(cardNum: 039,
             artistName: "Bubblegum Nihilists",
             imageName: "bubblegumNihilistCard",
             jamStrategy: "Hold a single note and change everything around it."),
        
        Card(cardNum: 040,
             artistName: "Chumslick",
             imageName: "chumslickCard",
             jamStrategy: "Get polyrhythmic."),
        
        Card(cardNum: 041,
             artistName: "dank_live_af",
             imageName: "dankLiveAfCard",
             jamStrategy: "Put the kick and bass in stereo."),
        
        Card(cardNum: 042,
             artistName: "The Sound Serum",
             imageName: "theSoundSerumCard",
             jamStrategy: "As though from another universe."),
        
        Card(cardNum: 043,
             artistName: "MaZmiTh",
             imageName: "mazmithCard",
             jamStrategy: "Incorporate at least one odd timing."),
        
        Card(cardNum: 044,
             artistName: "Solvognen",
             imageName: "solvognenCard",
             jamStrategy: "Build a sequence without listening to it."),
        
        Card(cardNum: 045,
             artistName: "Beta Units",
             imageName: "betaUnitsCard",
             jamStrategy: "Clear half of your patterns after a great solo."),
        
        Card(cardNum: 046,
             artistName: "LUVU",
             imageName: "luvuCard",
             jamStrategy: "Make it about love."),
        
        Card(cardNum: 047,
             artistName: "SPRK",
             imageName: "sprkCard",
             jamStrategy: "!esrever dias I, esreveR"),
        
        Card(cardNum: 048,
             artistName: "Brandon Stargrave",
             imageName: "brandonStargraveCard",
             jamStrategy: "Make it weird, then make it weirder."),
        
        Card(cardNum: 049,
             artistName: "Statrax",
             imageName: "statraxCard",
             jamStrategy: "Discard the last layer you created and replace it by another device."),
        
        Card(cardNum: 050,
             artistName: "Tin Can Synth Jam",
             imageName: "tinCanSynthJamCard",
             jamStrategy: "Filter everything, push the resonance."),
        
        Card(cardNum: 051,
             artistName: "Abstract amcr",
             imageName: "abstractamcrCard",
             jamStrategy: "Add some space whales."),
        
        Card(cardNum: 052,
             artistName: "Purple Bee TV",
             imageName: "purpleBeeTvCard",
             jamStrategy: "Beatbox your drum beat."),
        
        Card(cardNum: 053,
             artistName: "Syd Heresy",
             imageName: "sydHeresyCard",
             jamStrategy: "Worship the glitch."),
        
        Card(cardNum: 054,
             artistName: "Aaron Goldberg",
             imageName: "aaronGoldbergCard",
             jamStrategy: "Use one instrument in as many ways as possible."),
        
        Card(cardNum: 055,
             artistName: "AwktOpus |IOU Studio|",
             imageName: "awktopusIouStudioCard",
             jamStrategy: "Create a deeper hidden meaning: put a little secret in the music."),
        
        Card(cardNum: 056,
             artistName: "Lyli J",
             imageName: "lyliJCard",
             jamStrategy: "Slow down. Stretch. Sing mantras over everything."),
        
        Card(cardNum: 057,
             artistName: "CakeFlaps",
             imageName: "cakeflapsCard",
             jamStrategy: "Only keep the least essential element and build something new on top."),
        
        Card(cardNum: 058,
             artistName: "BardicPerspiration",
             imageName: "bardicPerspirationCard",
             jamStrategy: "Tell a tale about your jam. use your jam to tell a tale."),
        
        Card(cardNum: 059,
             artistName: "DreamCadaver",
             imageName: "dreamCadaverCard",
             jamStrategy: "Transform into its opposite and juxtapose the two."),
        
        Card(cardNum: 060,
             artistName: "JB Noise",
             imageName: "jbNoiseCard",
             jamStrategy: "Play in two complimentary keys at once."),
        
        Card(cardNum: 061,
             artistName: "Woke-Ass Messiah",
             imageName: "wokeAssMessiahCard",
             jamStrategy: "Stimulate or utilize a commonly unused input."),
        
        Card(cardNum: 062,
             artistName: "Sunshine [at Night]",
             imageName: "sunshineAtNightCard",
             jamStrategy: "Replace your kick drum and your longest running sequence."),
        
        Card(cardNum: 063,
             artistName: "psynthesys",
             imageName: "pysnthesysCard",
             jamStrategy: "Take a low pass deep into the abyss."),
        
        Card(cardNum: 064,
             artistName: "Bai-ee",
             imageName: "baieeCard",
             jamStrategy: "Introduce an acid bassline."),
        
        Card(cardNum: 065,
             artistName: "neonhaus",
             imageName: "neonhausCard",
             jamStrategy: "Play the tuning knob.")
    ]
    var body: some View {
        NavigationView {
            List{
                ForEach(cards) { card in
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
            .font(.custom("Revalia", size: 30))
            .scrollContentBackground(.hidden)
            .background {
                Color.brown
                //Image("bg")
                // .resizable()
                    .ignoresSafeArea()
            }
        }
        
        
    }
    
}
    struct CardModel_Previews: PreviewProvider {
        static var previews: some View {
            CardModel()
        }
    }

