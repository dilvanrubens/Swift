//
//  Tela04.swift
//  Desafio05
//
//  Created by Turma01-2 on 28/08/24.
//

import SwiftUI

struct Tela04: View {
    var body: some View {
        NavigationView{
            List{
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
            }
            .navigationTitle("Lista")
            .font(.title)
        }
    }
}

#Preview {
    Tela04()
}
