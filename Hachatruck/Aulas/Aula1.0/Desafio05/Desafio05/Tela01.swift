//
//  Tela01.swift
//  Desafio05
//
//  Created by Turma01-2 on 28/08/24.
//

import SwiftUI

struct Tela01: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 310)
            Image(systemName: "paintbrush")
                .resizable()
                .foregroundStyle(.pink)
                .aspectRatio(contentMode: .fit)
                .frame(width: 230)
        }
    }
}

#Preview {
    Tela01()
}
