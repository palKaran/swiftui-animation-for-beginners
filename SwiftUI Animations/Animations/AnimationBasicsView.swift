//
//  AnimationBasicsView.swift
//  SwiftUI Animations
//
//  Created by Karan Pal on 26/07/25.
//
import SwiftUI

struct AnimationBasicsView: View {
    @State private var isVisible = false
    
    var body: some View {
        VStack {
            Button("Toggle") {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isVisible.toggle()
                }
            }
            
            if isVisible {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .transition(.slide)
            }
        }
    }
}

#Preview {
    AnimationBasicsView()
}
