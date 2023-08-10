//
//  ContentView.swift
//  Cards
//
//  Created by Gabriel Sabaini on 07/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    Card1()
                    Card2()
                }
            } .navigationTitle("Cards")
//                .navigationBarTitleDisplayMode
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
