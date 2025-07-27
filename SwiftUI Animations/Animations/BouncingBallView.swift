//
//  BouncingBallView.swift
//  SwiftUI Animations
//
//  Created by Karan Pal on 26/07/25.
//
import SwiftUI

struct BouncingBallView: View {
    @State private var moveDown = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Circle()
                .fill(.orange)
                .frame(width: 80, height: 80)
                .offset(y: moveDown ? 300 : 0)
                .animation(.interpolatingSpring(stiffness: 120, damping: 8), 
                          value: moveDown)
            
            Spacer()
            
            Button("Bounce!") {
                moveDown.toggle()
            }
        }
        .padding()
    }
}

#Preview {
    BouncingBallView()
}

// Replace the existing Circle with
/*
Circle()
    .fill(.orange)
    .frame(width: 80, height: 80)
    .offset(y: moveDown ? 300 : 0)
    .scaleEffect(moveDown ? CGSize(width: 1.2, height: 0.8) : CGSize(width: 1.0, height: 1.0))
    .animation(.interpolatingSpring(stiffness: 120, damping: 8), value: moveDown)
*/
