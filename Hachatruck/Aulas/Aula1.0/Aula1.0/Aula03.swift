//
//  Aula03.swift
//  Aula1.0
//
//  Created by Turma01-2 on 22/08/24.
//

import SwiftUI

struct Aula03: View {
    @State private var name: String = "Fulano"
    @State private var showingAlert = false
    var body: some View {
        
        ZStack {
            
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
                .blur(radius: 3)
                .opacity(0.3)
            
            VStack {
                Text("Bem vindo, \(name)!")
                    .font(.title)
                
                TextField("Digite seu nome", text: $name)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Button("Entrar") {
                    showingAlert = true
                }
                .alert( isPresented: $showingAlert) {
                    
                    Alert(
                        title: Text("ALERTA!"),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá!"))
                    )
                }
            }
            
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 230)
                Image("truck")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 230)
                
            }
        }
    }
}
#Preview {
    Aula03()
}
