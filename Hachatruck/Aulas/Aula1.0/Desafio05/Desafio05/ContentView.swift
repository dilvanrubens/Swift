//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma01-2 on 27/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tela01()
            .tabItem {
                Label("Rosa",systemImage: "paintbrush")
                    }
            Tela02()
            .tabItem {
                Label("Azul",systemImage: "paintbrush.pointed")
                }
            Tela03()
            .tabItem {
                Label("Cinza",systemImage: "paintpalette")
                }
            Tela04()
            .tabItem {
                Label("Lista",systemImage: "list.bullet" )
                }
            
        }
    }
}


#Preview {
    ContentView()
}
