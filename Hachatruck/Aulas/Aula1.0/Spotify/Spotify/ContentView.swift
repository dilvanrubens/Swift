//
//  ContentView.swift
//  Spotify
//
//  Created by Turma01-2 on 29/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.blue, .black],
                               startPoint: .top,endPoint: .center).ignoresSafeArea()
                ScrollView{
                    VStack {
                        
                        VStack {
                            AsyncImage(url: URL(string: "https://scontent.frec10-1.fna.fbcdn.net/v/t39.30808-6/298538957_489455429848754_8338744740369789501_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=PK9_VyMhsBsQ7kNvgEGP0hv&_nc_ht=scontent.frec10-1.fna&oh=00_AYCleanw3ofsn4ZdINszLqUOtzyCPmTiebN-FwpmSq8UHQ&oe=66D6A1D7")!) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 200, height: 200)
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }
                            Text("HackaFM")
                                .font(.title)
                                .colorInvert()
                                .bold()
                            //                        .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        HStack{
                            AsyncImage(url: URL(string: "https://scontent.frec10-1.fna.fbcdn.net/v/t39.30808-6/298538957_489455429848754_8338744740369789501_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=cc71e4&_nc_ohc=PK9_VyMhsBsQ7kNvgEGP0hv&_nc_ht=scontent.frec10-1.fna&oh=00_AYCleanw3ofsn4ZdINszLqUOtzyCPmTiebN-FwpmSq8UHQ&oe=66D6A1D7")!) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 30, height: 30)
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }
                            Text("HackaFM")
                                .colorInvert()
                            //                            .frame(maxWidth: .infinity, alignment:.leading)
                            Spacer()
                        }
                        
                        VStack(spacing: 8) {
                            
                            ForEach(arrayMusicas) {s in
                                NavigationLink(destination: Tocando(song: s)){
                                    HStack{
                                        AsyncImage(url: URL(string: s.capa)!) { image in
                                            image
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 50, height: 40)
                                                .clipped()
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        
                                        VStack{
                                            Text(s.name)
                                                .foregroundStyle(.white)
                                                .font(.system(size: 17))
                                                .frame(maxWidth: .infinity, alignment:.leading)
                                            
                                            Text(s.artist)
                                                .foregroundStyle(.white)
                                                .frame(maxWidth: .infinity, alignment:.leading)
                                            
                                            
                                        }
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    }}
                            }
                        }
                        
                        HStack {
                            Text("Sugeridos")
                                .font(.title)
                                .foregroundStyle(.white)
                                .padding(.top, 50)
                                .bold()
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(arrayMusicas) { song in
                                    AsyncImage(url: URL(string: song.capa)!) { image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 200, height: 200)
                                            .clipped()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    
                                    
                                }
                            }
                            
                        }
                    }.padding()
                }
            }
        }
    }
}


struct Song : Identifiable {
    var id : Int
    var name : String
    var artist: String
    var capa : String
}

var arrayMusicas = [
    Song(id: 1, name: "Venus as a boy", artist: "Björk", capa: "https://i.scdn.co/image/ab67616d0000b273610f5f3ddb9d3c4ca0dfda09"),
    Song(id: 2, name: "Call It Fate, Call It Karma", artist: "The Strokes", capa: "https://i.scdn.co/image/ab67616d00001e02295af65b624d1716139c608b"),
    Song(id: 3, name: "Love Is A Long Road", artist: "Tom Petty", capa: "https://assetsio.gnwcdn.com/gta-6-main-art-01.png?width=1200&height=1200&fit=crop&quality=100&format=png&enable=upscale&auto=webp"),
    Song(id: 1, name: "Venus as a boy", artist: "Björk", capa: "https://i.scdn.co/image/ab67616d0000b273610f5f3ddb9d3c4ca0dfda09"),
    Song(id: 2, name: "Call It Fate, Call It Karma", artist: "The Strokes", capa: "https://i.scdn.co/image/ab67616d00001e02295af65b624d1716139c608b"),
    Song(id: 3, name: "Love Is A Long Road", artist: "Tom Petty", capa: "https://assetsio.gnwcdn.com/gta-6-main-art-01.png?width=1200&height=1200&fit=crop&quality=100&format=png&enable=upscale&auto=webp"),
    Song(id: 1, name: "Venus as a boy", artist: "Björk", capa: "https://i.scdn.co/image/ab67616d0000b273610f5f3ddb9d3c4ca0dfda09"),
    Song(id: 2, name: "Call It Fate, Call It Karma", artist: "The Strokes", capa: "https://i.scdn.co/image/ab67616d00001e02295af65b624d1716139c608b"),
    Song(id: 3, name: "Love Is A Long Road", artist: "Tom Petty", capa: "https://assetsio.gnwcdn.com/gta-6-main-art-01.png?width=1200&height=1200&fit=crop&quality=100&format=png&enable=upscale&auto=webp"),
    Song(id: 1, name: "Venus as a boy", artist: "Björk", capa: "https://i.scdn.co/image/ab67616d0000b273610f5f3ddb9d3c4ca0dfda09"),
    Song(id: 2, name: "Call It Fate, Call It Karma", artist: "The Strokes", capa: "https://i.scdn.co/image/ab67616d00001e02295af65b624d1716139c608b"),
    Song(id: 3, name: "Love Is A Long Road", artist: "Tom Petty", capa: "https://assetsio.gnwcdn.com/gta-6-main-art-01.png?width=1200&height=1200&fit=crop&quality=100&format=png&enable=upscale&auto=webp"),
    
]

#Preview {
    ContentView()
}
