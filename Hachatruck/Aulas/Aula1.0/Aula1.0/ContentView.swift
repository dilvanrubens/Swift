//
//  ContentView.swift
//  Aula1.0
//
//  Created by Turma01-2 on 21/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {    HStack {
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Rectangle()
                .fill(.blue)
                .frame(width: 100, height: 100)
                
        }
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            HStack {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 100, height: 100)
            }
        }
        
        .padding()
    }
}
#Preview {
    ContentView()
}
