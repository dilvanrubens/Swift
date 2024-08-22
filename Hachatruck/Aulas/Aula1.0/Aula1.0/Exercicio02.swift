//
//  Exercicio02.swift
//  Exercicio01
//
//  Created by Turma01-2 on 21/08/24.
//

import SwiftUI

struct Exercicio02: View {
    var body: some View {
        
        HStack {
            Image("Hollow")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .padding()
            VStack (spacing: 10){
                Text("Hollow Knight")
                    .foregroundStyle(.red)
                Text("Um jogo sobre")
                    .foregroundStyle(.blue)
                Text("O Cheio")
                    .foregroundStyle(.orange)
            }
        }
    }
}

#Preview {
    Exercicio02()
}
