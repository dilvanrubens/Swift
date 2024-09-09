//
//  Tela2.swift
//  PGTfinal
//
//  Created by Turma01-2 on 09/09/24.
//

import SwiftUI

struct Tela2: View {@State var noticia: Noticia
    var body: some View {
   
        ZStack{
            LinearGradient(colors: [.white, .green],
                           startPoint: .top,endPoint: .bottomLeading).ignoresSafeArea()
            ScrollView{
                VStack {
                    
                    VStack {
                        AsyncImage(url: URL(string: noticia.capa)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 200)
                                .clipped()
                                .foregroundStyle(.tint)
                                .padding()
                                .scaledToFill()
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                        
                        Text(noticia.localizacao)
                            .font(.title)
                            .colorInvert()
                            .bold()
                            .padding(5)
                        
                        Text(noticia.descricao+noticia.tempo)
                            .colorInvert()
                            .bold()
                        
                        Text("O desenvolvimento de The Last of Us começou em 2009 logo depois da finalização de Uncharted 2: Among Thieves, o título anterior da Naughty Dog. A relação entre Joel e Ellie foi o foco central do jogo, com todos os outros elementos de história e jogabilidade desenvolvendo-se ao seu redor. A equipe criativa escolheu os atores Troy Baker e Ashley Johnson a fim de interpretarem os personagens principais, que realizaram a captura de movimentos e dublagem para seus respectivos papéis. Ambos auxiliaram o diretor de criação Neil Druckmann com o desenvolvimento da história e personagens. Novos motores de jogo foram criados para satisfazer as necessidades técnicas, com a inteligência artificial de Ellie sendo um grande ponto de desenvolvimento e aprimoramento. A trilha sonora original foi composta por Gustavo Santaolalla, enquanto os efeitos sonoros assumiram um ponto de vista mais naturalista e minimalista do que em outros jogos de ação.")
                            .colorInvert()
                            .bold()
                            .colorInvert()
                            .multilineTextAlignment(.leading)
                        
                        //                        .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding(.bottom, 150)
                    
                }
            }.padding()
        }
    }
}

#Preview {
    Tela2 (noticia: Noticia (id: 0, localizacao: "", descricao: "", tempo: "", capa: ""))
}
