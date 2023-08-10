//
//  PerfilView.swift
//  TabBar e Menu
//
//  Created by Gabriel Sabaini on 10/08/23.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ZStack(alignment: .centerLastTextBaseline){
                Rectangle().frame(width: .infinity, height: 150).cornerRadius(10).padding(5)
                    Circle().frame(width: 50, height: 50).foregroundColor(.blue)
                }
                Spacer()
            }
                
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
