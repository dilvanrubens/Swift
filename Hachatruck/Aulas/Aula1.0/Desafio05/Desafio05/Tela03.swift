//
//  Tela03.swift
//  Desafio05
//
//  Created by Turma01-2 on 27/08/24.
//

import SwiftUI

struct Tela03: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .fill(.black)
                .frame(width: 310)
            Image(systemName: "paintpalette")
                .resizable()
                .foregroundStyle(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 230)
            
        }
    }
}

#Preview {
    Tela03()
}
