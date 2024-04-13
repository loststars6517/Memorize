//
//  AnimatedButtonIView.swift
//  Memorize
//
//  Created by Felix Chan on 2024/4/13.
//

import SwiftUI

struct AnimatedButtonIView: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    isAnimating.toggle()
                }
            }, label: {
                Image(systemName: "hand.point.up.left.fill")
                    .font(.largeTitle)
                    .symbolEffect(.bounce.down.byLayer, value: isAnimating)
                    .padding(.vertical, 5.0)
                    .padding(.horizontal, 15.0)
            })
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    AnimatedButtonIView()
}
