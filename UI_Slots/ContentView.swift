//
//  ContentView.swift
//  Slots
//
//  Created by Админ on 25.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["apple", "cherry", "star"]
    @State private var numbers = [0, 2, 1]
    @State private var score = 1000
    private var betAmount = -5
    
    var body: some View {
        ZStack {
            
        Rectangle().foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        Rectangle().foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255)).rotationEffect(Angle(degrees: 75)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    
                    Text("UI Slots")
                        .bold()
                        .foregroundColor(.yellow)
                        .colorInvert()
                    
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                Text("Score: \(score)").foregroundColor(.black).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).background(Color.white.opacity(0.5)).cornerRadius(20).scaleEffect(2)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(symbols[numbers[0]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[1]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[2]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Spacer()
                }
                
                Spacer()
                
                //Button
                Button(action: {
                    
                    //changeImages
                    self.numbers[0] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[1] = Int.random(in: 0...self.symbols.count - 1)
                    
                    self.numbers[2] = Int.random(in: 0...self.symbols.count - 1)
                    
                    //check winnings
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
                        
                        //won
                        self.score += self.betAmount * -10
                    }
                    else {
                        self.score += self.betAmount
                    }
                    
                    //Todo
                    
                }) {
                    Text("Spin")
                        .bold()
                        .foregroundColor(.white)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                        .scaleEffect(2)
                }
                
                    Spacer()
                
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
