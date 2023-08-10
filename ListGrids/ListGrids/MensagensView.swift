//
//  ContentView.swift
//  ListGrids
//
//  Created by Gabriel Sabaini on 09/08/23.
//

import SwiftUI

struct MensagensView: View {
    @State var open: Bool = false
    let pessoas: [String] = ["Diego", "Carlos", "Gisele","Vovó", "Ricardinho"]
    var abriu: [Bool] = [false,true,false,false,true]
    let mensagens: [String] = ["CADA MENSAGEM ESTÁ SENDO DIFERENTES", "Mensagem debaixo da mensagem bem grande pra eu testar", "Mande Notícias!", "Break", "Testando?"]
    let horario: [String] = ["3:41PM","2:57PM","11:47PM","2:57AM", "3:41AM"]
        var body: some View {
        NavigationStack {
            VStack{
                List{
                    ForEach(0..<pessoas.count, id: \.self){ i in
                        HStack{
                            if abriu[i] {
                                
                                    Image(systemName:   "circle.fill")
                                        .foregroundColor(.blue)
                                        .font(.subheadline)
                                        .frame(width: 1, height: 1)
                                        .padding(0)
                                        
                                }; if abriu[i] == false{
                                    Text("")
                                        .padding(0)
                                        .font(.subheadline)
                                        .frame(width: 1, height: 1)
                                }
                            Image(systemName: "person.fill")
                                .font(.title)
                                .padding(.trailing, 5)
                                .padding(.leading, 0)
                            VStack(alignment: .leading){
                                HStack{
                                    Text(pessoas[i])
                                        .font(.title3)
                                        .bold()
                                    Spacer()
                                    Text(horario[i])
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Text(mensagens[i])
                                    .font(.subheadline)
                            }
                        }.frame(width: .infinity,height:  60)
                            
                    }
                }.listStyle(.plain)
                    .padding(.top)
            }
                .toolbar{
                    ToolbarItem(placement: .navigation){
                        HStack{
                            Text("Messages").padding(.trailing, 150).font(.largeTitle).bold()
                            
                            Image(systemName: "plus.bubble.fill").foregroundColor(.green)
                        }
                    }
                }
               
        }
    }
}

struct MensagensView_Previews: PreviewProvider {
    static var previews: some View {
        MensagensView()
    }
}
