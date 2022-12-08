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
struct DeckView: View {
    @ObservedObject var deckViewModel: DeckViewModel
    
                                      
    var body: some View {
        ZStack {
         Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            
            ForEach(deckViewModel.cardsArray) { card in
               
                    VStack() {
                        
                        Text(deckViewModel.cardsArray.first!.jamStrategy)
                            .foregroundColor(.black)
                            .font(.custom("Revalia", size: 28))
                            .multilineTextAlignment(.center)

    
                        Image(deckViewModel.cardsArray.first!.imageName)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(25)
                        Text(deckViewModel.cardsArray.first!.artistName)
                            .foregroundColor(.yellow)
                            .font(.custom("Revalia", size: 28))
                            .multilineTextAlignment(.center)

                            .onShake {
                                deckViewModel.deckShuffle()
                            }
                            
                            
//                        }, label: {
//                            ZStack {
//                            Image("buttonImage")
//                                .cornerRadius(15)
//                                Text("Shuffle")
//                                    .foregroundColor(.yellow)
//                                    .font(.custom("Revalia", size: 22))
//                            }
//                        })

                        Spacer()
                    }
                    .padding()
                
                }
            
           
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView(deckViewModel: DeckViewModel())
        
        //ContentView()
    }
}
