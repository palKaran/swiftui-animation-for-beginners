//
//  AnimatedCircleView.swift
//  SwiftUI Animations
//
//  Created by Karan Pal on 26/07/25.
//
import SwiftUI

struct AnimatedCircleView: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Toggle Size") {
                isExpanded.toggle()
            }
            
            Circle()
                .fill(.blue)
                .frame(width: isExpanded ? 200 : 100, 
                       height: isExpanded ? 200 : 100)
                .animation(.spring(response: 0.4, dampingFraction: 0.6), 
                          value: isExpanded)
        }
        .padding()
    }
}

#Preview {
    AnimatedCircleView()
}
