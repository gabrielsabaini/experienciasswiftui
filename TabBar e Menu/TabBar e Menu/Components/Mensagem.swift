//
//  Mensagem.swift
//  TabBar e Menu
//
//  Created by Gabriel Sabaini on 10/08/23.
//

import SwiftUI

struct Mensagem: View {
    @State var lido: Bool
    var pessoas: String
    var horario: String
    var mensagens: String
    var foto: String
    var body: some View {
        HStack{
            Circle().foregroundColor(lido == false ? .blue : .clear)
                .frame(width: 10)
                .padding(.leading)
            Image(systemName: "person.fill")
                .font(.title)
                .padding(.trailing, 5)
                .padding(.leading, 0)
            VStack(alignment: .leading){
                HStack{
                    Text(pessoas)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(horario)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.trailing)
                }
                Text(mensagens)
                    .font(.subheadline)
            }
        }
    }
}


struct Mensagem_Previews: PreviewProvider {
    static var previews: some View {
        Mensagem(lido: true, pessoas: "Rafael", horario: "23:52", mensagens: "Pode vir pedir ajuda quando precisar", foto: " " )
    }
}
