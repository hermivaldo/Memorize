//
//  ContentView.swift
//  Memorize
//
//  Created by Hermivaldo on 13/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack  {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack (alignment: .center) {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }else {
                base.fill()
            }
            
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
