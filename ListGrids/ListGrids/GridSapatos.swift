//
//  GridSapatos.swift
//  ListGrids
//
//  Created by Gabriel Sabaini on 09/08/23.
//

import SwiftUI

struct GridSapatos: View {
    let columns = [
        GridItem(.fixed(200)),
        GridItem(.flexible()),
    ]
    var tenis: [String] = ["Sapato1","Sapato2","Sapato3","Sapato4","Sapato1","Sapato1","Sapato1","Sapato1","Sapato1","Sapato1","Sapato1","Sapato1","Sapato1","Sapato1"]
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack(alignment: .top){
                        VStack(alignment: .leading){
                            Text("ITENS")
                                .foregroundColor(.gray)
                            Text("24")
                                .font(.title)
                                .bold()
                        } .padding(.trailing ,10)
                            .frame(width: 120, height: 90)
                        VStack(alignment: .leading){
                            Text("TOTAL SPENT")
                                .foregroundColor(.gray)
                            Text("$3240")
                                .font(.title)
                                .bold()
                        }.padding(.horizontal, 5)
                            .frame(width: 150, height: 90)
                        VStack(alignment: .leading){
                            Text("EST. VALUE")
                                .foregroundColor(.gray)
                            Text("$7249")
                                .font(.title)
                                .bold()
                        }.padding(.leading,10)
                            .frame(width: 120, height: 90)
                    }.frame(width: .infinity, height: 100, alignment: .top)
                                    LazyVGrid(columns: columns)
                                    {
                                        ForEach(0..<tenis.count, id: \.self){ i in
                                            Button{
                                                print("funciona")
                                            } label:{
                                                Image("Image")
                                                    .resizable()
                                                    .frame(width: 180, height: 160)
                                            }
                                        }
                                    }.padding(.horizontal)
                }
                .navigationTitle("My Collection")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            print("func")
                        } label:{
                            Image(systemName:  "plus")
                        }
                    }
                }
            }
            
        }
    }
}

struct GridSapatos_Previews: PreviewProvider {
    static var previews: some View {
        GridSapatos()
    }
}
