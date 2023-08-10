//
//  ContentView.swift
//  TabBar e Menu
//
//  Created by Gabriel Sabaini on 10/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                CardsView()
                    .tabItem {
                        Label("Cards", systemImage: "creditcard")
                    }
                MensagensView()
                    .tabItem{
                        Label("Mensagens", systemImage: "list.bullet")
                    }
                PerfilView()
                    .tabItem{
                        Label("Perfil", systemImage: "person")
                    }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
