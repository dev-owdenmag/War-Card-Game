//
//  ContentView.swift
//  War Card Game
//
//  Created by Owden Magnusen on 6/19/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
              
                Button(action: {
                    deal()
                }, label: {
                     Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        
        }
    }
    
    func deal() {
        // Randomise the player's cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomise the cpu's cards
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the scores
        if playerCardValue > cpuCardValue{
            
            //Add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            
            //Add 1 to cpu score
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
