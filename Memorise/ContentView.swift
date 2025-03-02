//
//  ContentView.swift
//  Memorise
//
//  Created by Hongliang Sun on 2/3/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content:  {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                               .fill(.white)
                            RoundedRectangle(cornerRadius: 12)
                                .strokeBorder(lineWidth: 2)
                                .foregroundStyle(.orange)
                            Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.orange)
            }
        })
    }
}

#Preview {
    ContentView()
}
