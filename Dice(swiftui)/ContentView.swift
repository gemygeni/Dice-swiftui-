//
//  ContentView.swift
//  Dice(swiftui)
//
//  Created by AHMED GAMAL  on 08/03/2023.
//

import SwiftUI

struct ContentView: View {
   @State var leftSideCount = 1
   @State var rightSideCount = 1
    var body: some View {
        ZStack {
            Image("background").resizable()
                .ignoresSafeArea()
               
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    Image("dice\(leftSideCount)").resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                    Spacer()
                    Image("dice\(rightSideCount)").resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                }.padding(.horizontal)
                Spacer()
                Button {
                    deal()
                } label: {
                    
                    Text("Roll").fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .padding(.horizontal)
                        .background(Color.red)
                }.padding()

            }
           
        }
    }
    
    private func deal(){
       leftSideCount = Int.random(in: 1...6)
        rightSideCount = Int.random(in: 1...6)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
