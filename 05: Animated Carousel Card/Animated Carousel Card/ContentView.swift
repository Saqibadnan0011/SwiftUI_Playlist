//
//  ContentView.swift
//  Animated Carousel Card
//
//  Created by Saqib Adnan on 06/04/2024.
//
//  MARK: Saqib Adnan
//  Instagram
//  MARK: saqib_iosdev

import SwiftUI

struct ContentView: View {
    
    private var colorArr: [Color] = [.primary, .gray, .primary ]
    var body: some View {
        NavigationStack {
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (spacing: 15) {
                    ForEach(0..<colorArr.count, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(colorArr[index])
                            .frame(width: UIScreen.main.bounds.width - 80, height: 370)
                            .scrollTransition { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 0.9 : 0.8)
                                    .scaleEffect(y: phase.isIdentity ? 1 : 0.7)
                            }
                    }
                }
                .scrollTargetLayout()
                .navigationTitle("Carousel View")
            }
            .contentMargins(50, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
        }
    }
}

#Preview {
    ContentView()
}
