//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma01-2 on 27/08/24.
//

import SwiftUI

struct Tela02: View {
    var body: some View {
        
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 310)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .foregroundStyle(.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 230)
            
        }
    }
}
    
#Preview {
    Tela02()
}
