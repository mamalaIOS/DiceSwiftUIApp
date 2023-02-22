//
//  ContentView.swift
//  DiceSwiftUIApp
//
//  Created by Amel Sbaihi on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftdice : Int = 1
    @State var rigthDice : Int = 1
    
    var body: some View {
        
       
        
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
              
          VStack {
                Image("diceeLogo")
              Spacer()
                HStack {
                    DiceView(n: rigthDice)
                    DiceView(n: leftdice)
                    }
             
                .padding(.horizontal)
                
            Spacer()

                Button("roll")
                
                {
                    self.leftdice = Int.random(in: 1...6)
                    self.rigthDice = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .foregroundColor(.white)
                
                .background(.red)
              
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

struct DiceView: View {
    
    var n : Int
    var body: some View {
        
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            
           
    }
}
