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
            LinearGradient(colors: [.verde, .white],
                           startPoint: .top,endPoint: .center).ignoresSafeArea()
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
                            .foregroundColor(.black)
                            .bold()
                            .padding(5)
                        
                        Text(noticia.descricao+noticia.tempo)
                            .foregroundStyle(.black)
                            .bold()
                        .padding(.bottom, 0.1)
                        
                        Text("As queimadas continuam a assombrar Juazeiro do Norte e sua região circundante, causando preocupação e danos significativos. Nesta segunda-feira, 02, foi registrado relatos alarmantes das proximidades do Hotel Verdes Vale, onde as chamas consomem áreas florestais e lançam uma densa cortina de fumaça sobre a cidade. Mas Juazeiro do Norte não está sozinha nessa luta contra as chamas. O município de Caririaçu também enfrenta incêndios de grandes proporções. Sítios como São Lourenço, Cacimbas, Extrema e outros têm sido tomados por incêndios devastadores nos últimos cinco dias. Moradores locais relatam prejuízos severos, incluindo a perda de animais e colheitas, enquanto lutam para conter as chamas que ameaçam suas propriedades e meios de subsistência. O cenário é ainda mais sombrio em Juazeiro do Norte, onde a cidade está encoberta por uma densa camada de fumaça. As informações apontam que a fonte desse problema pode estar localizada nas proximidades de Caririaçu, onde os incêndios continuam a se alastrar descontroladamente. A situação se agrava ainda mais no distrito de Arajara, em Barbalha, onde os moradores do Sítio Taquari estão sofrendo com queimadas que já duram dois dias. Apesar da intervenção dos bombeiros, as chamas persistem, e o calor se intensifica cada vez mais na região.")
                            .bold()
                            .foregroundColor(.black)
                            .font(.system(size: 15))
                            .multilineTextAlignment(.leading)
                        
                        //                        .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding(.bottom, 150)
                    
                }.padding(.init(top: 0, leading: 10, bottom: 0, trailing: 10))
            }
        }
    }
}

#Preview {
    Tela2 (noticia: Noticia (id: 0, localizacao: "", descricao: "", tempo: "", capa: ""))
}
