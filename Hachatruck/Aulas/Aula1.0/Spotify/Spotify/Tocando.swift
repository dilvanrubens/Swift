//
//  Tocando.swift
//  Spotify
//
//  Created by Turma01-2 on 30/08/24.
//

import SwiftUI

struct Tocando: View {
    @State var song: Song
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black],
                           startPoint: .top,endPoint: .center).ignoresSafeArea()
            
            VStack {
                
                VStack {
                    AsyncImage(url: URL(string: song.capa)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                            .clipped()
                    } placeholder: {
                        ProgressView()
                    }

                    Text(song.name)
                        .font(.title)
                        .colorInvert()
                        .bold()
                    Text(song.artist)
                        .colorInvert()
                        .bold()
                        
                    //                        .frame(maxWidth: .infinity, alignment: .leading)
                }.padding(.bottom, 150)
                
                HStack{
                    Image(systemName: "shuffle")
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill").font(.system(size: 60))
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")
                }.foregroundColor(.white)
                    .font(.system(size: 40))
            }
        }
    }
}

#Preview {
    Tocando (song: Song (id: 0, name: "", artist: "", capa: ""))
}
