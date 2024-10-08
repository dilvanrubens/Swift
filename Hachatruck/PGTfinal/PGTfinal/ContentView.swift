//
//  ContentView.swift
//  PGTfinal
//
//  Created by Turma01-2 on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    Text("Notícias")
                        .foregroundStyle(.black)
                        .font(.system(size: 25))
                        .frame(maxWidth: .infinity, alignment:.leading)
                        .bold()
                        .scenePadding(.bottom)
                    
                    ScrollView{
                        VStack(spacing: 7) {
                            
                            ForEach(arrayNoticias) { s in
                                NavigationLink(destination: Tela2(noticia: s)){
                                    VStack{
                                        AsyncImage(url: URL(string: s.capa)!) { image in
                                            image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 300, height: 150)
                                                .clipped()
                                                .padding(2)
                                                .scaledToFill()
                                                .clipped()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        
                                        VStack{
                                            HStack{
                                                Image(systemName: "location.circle.fill")
                                                    .font(.system(size: 30))
                                                    .tint(Color("verde"))
                                                
                                                Text(s.localizacao)
                                                    .foregroundStyle(.black)
                                                    .font(.system(size: 17))
                                                    .bold()
                                                Spacer()
                                                
                                            }.multilineTextAlignment(.leading)
                                                .padding(.bottom, 0.1)
                                            
                                            HStack{
                                                Text(s.descricao + s.tempo)
                                                    .font(.system(size:15))
                                                    .foregroundStyle(.black)
                                            }.multilineTextAlignment(.leading)
                                            
                                            
                                        }.padding(.init(top: 0, leading: 35, bottom: 10, trailing: 35))
                                    }
                                    
                                    
                                }
                            }
                        }
                    }
                }
                
            }
        }
    }
}

struct Noticia : Identifiable {
    var id : Int
    var localizacao : String
    var descricao: String
    var tempo: String
    var capa : String
}

var arrayNoticias = [
    Noticia(id: 1, localizacao: "Juazeiro do Norte e região do Cariri", descricao: "Queimadas continuam assolando Juazeiro do Norte e região do Cariri nos últimos dias", tempo: ", em 09/09/2024", capa: "https://images.adsttc.com/media/images/63ff/ceda/1a83/250f/afc0/e569/large_jpg/a-arquitetura-como-reflexo-da-condicao-humana-em-the-last-of-us_1.jpg?1677709037"),
    Noticia(id: 2, localizacao: "Local da notícia.", descricao: "Data da noticía junto à uma mini descrição", tempo: ", em 09/09/2009", capa: "https://images.adsttc.com/media/images/63ff/ceda/1a83/250f/afc0/e569/large_jpg/a-arquitetura-como-reflexo-da-condicao-humana-em-the-last-of-us_1.jpg?1677709037"),
    Noticia(id: 3, localizacao: "Local da notícia.", descricao: "Data da noticía junto à uma mini descrição", tempo: ", em 09/09/2009", capa: "https://images.adsttc.com/media/images/63ff/ceda/1a83/250f/afc0/e569/large_jpg/a-arquitetura-como-reflexo-da-condicao-humana-em-the-last-of-us_1.jpg?1677709037"),
    
]

#Preview {
    ContentView()
}

