//
//  Card1.swift
//  Cards
//
//  Created by Gabriel Sabaini on 07/08/23.
//

import SwiftUI

struct Card1: View {
    
    
    var body: some View {
        ZStack (alignment: .bottom) {
            Color(.cyan)
            VStack{
                Image("Tartaruga")
                    .padding()
                ZStack(alignment: .center){
                    Color(.white)
                    VStack(alignment: .center){
                        Text("Tortoise")
                            .font(.largeTitle)
                            .bold()
                        
                        Text("\nLovely animals always\n make us Happy")
                            .font(.title3)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    }
                }
                .frame(minWidth: 5,minHeight: 200,maxHeight: 300, alignment: .top)
                
            }
            
        }
        .frame(minWidth: 5, maxWidth: 300, minHeight: 5, maxHeight: 400, alignment: .bottom)
        .background(
            Color.white.shadow(.drop(radius: 3)))
    }
}

struct Card1_Previews: PreviewProvider {
    static var previews: some View {
        Card1()
    }
}
