//
//  ContentView.swift
//  Memorize
//
//  Created by MacBookM2 on 10/25/23.
//
//  Start @ Lecture 2

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack {
            CardView()
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    @State private var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else { RoundedRectangle(cornerRadius: 12) }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
