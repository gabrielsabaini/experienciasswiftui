//
//  MensagensView.swift
//  TabBar e Menu
//
//  Created by Gabriel Sabaini on 10/08/23.
//

import SwiftUI

struct MensagensView: View {
    let pessoas: [String] = ["Diego", "Carlos", "Gisele","Vovó", "Ricardinho"]
    var abriu: [Bool] = [false,true,false,false,true]
    let mensagens: [String] = ["CADA MENSAGEM ESTÁ SENDO DIFERENTES", "Mensagem debaixo da mensagem bem grande pra eu testar", "Mande Notícias!", "Break", "Testando?"]
    let horario: [String] = ["3:41PM","2:57PM","11:47PM","2:57AM", "3:41AM"]
    
    
    var body: some View {
        NavigationStack{
                List{
                    ForEach(0..<pessoas.count, id: \.self){ i in
                        Mensagem(lido: abriu[i], pessoas: pessoas[i], horario: horario[i], mensagens: mensagens[i], foto: "").listRowBackground(abriu[i] == false ? Color.gray : .clear)
                    }.padding(.vertical, 7)
                }.listStyle(.plain)
                .navigationTitle("Mensagens")
        }
    }
}

struct MensagensView_Previews: PreviewProvider {
    static var previews: some View {
        MensagensView()
    }
}
    
