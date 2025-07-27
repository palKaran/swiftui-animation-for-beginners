//
//  TransitionExampleView.swift
//  SwiftUI Animations
//
//  Created by Karan Pal on 26/07/25.
//
import SwiftUI

struct TransitionExampleView: View {
    @State private var showCard = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Toggle Card") {
                withAnimation(.easeInOut(duration: 0.4)) {
                    showCard.toggle()
                }
            }
            
            if showCard {
                RoundedRectangle(cornerRadius: 16)
                    .fill(.purple)
                    .frame(width: 200, height: 120)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
            }
        }
        .padding()
    }
}

#Preview {
    TransitionExampleView()
}
