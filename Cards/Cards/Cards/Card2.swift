//
//  Card2.swift
//  Cards
//
//  Created by Gabriel Sabaini on 07/08/23.
//

import SwiftUI

struct Card2: View {
    @State var reviewed: Bool = false
  
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .frame(width: 350, height: 200, alignment: .center)
            HStack(alignment: .firstTextBaseline){
                Button{
                    print("clicou na imagem")
                    reviewed.toggle()
                } label: {
                    Image(systemName: "tortoise")
                        .padding(.horizontal)
                }
                
                VStack(alignment: . leading){
                    HStack{
                        Text("Metronome")
                            .font(.title)
                            .padding(.vertical, 1)
                        if reviewed {
                            Text("Reviewed")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(30)
                        }
                    }.frame(height: 30)
                    Text("Real Estate")
                        .foregroundColor(.gray)
                        .padding(.vertical, 1)
                    HStack{
                        Text("$20,000,000 / $30,000,000")
                        Spacer()
                        Text("30%")
                        
                    }
                    HStack
                    {
                        Text("Sponsored")
                            .foregroundColor(.purple)
                        Spacer()
                        Text("4d left")
                            
                    }.padding(.vertical, 1)
                }
                
            }.padding(10)
        } .frame(width: 350, height: 200, alignment: .center)
            .background(
                Color.white.shadow(.drop(radius: 3)))
        
    }
}

struct Card2_Previews: PreviewProvider {
    static var previews: some View {
        Card2()
    }
}
