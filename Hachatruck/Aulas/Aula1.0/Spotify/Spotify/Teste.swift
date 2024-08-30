//
//  Teste.swift
//  Spotify
//
//  Created by Turma01-2 on 30/08/24.
//

import SwiftUI

struct Teste: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .black],
                           startPoint: .top,endPoint: .center).ignoresSafeArea()
            
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
                Spacer()
                HStack {
                    Text("Sugeridos")
                        .font(.title)
                        .foregroundStyle(.white)
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<10) {
                            Text("Item \($0)")
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .frame(width: 200, height: 200)
                                .background(.red)
                            
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    Teste()
}
