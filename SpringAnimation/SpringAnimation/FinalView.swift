//
//  FinalView.swift
//  SpringAnimation
//
//  Created by Saqib Adnan on 13/01/2024.
//

import SwiftUI

struct FinalView: View {
    
    @State private var moving = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            ZStack {
                VStack {
                    Text("Srping Animation")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 700)
                        .foregroundColor(.blue)
                }
                
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true), value: moving)
                
                Circle()
                    .stroke(lineWidth: 2.5)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.05), value: moving)
                
                Circle()
                    .stroke(lineWidth: 3)
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.1), value: moving)
                
                Circle()
                    .stroke(lineWidth: 3.5)
                    .frame(width: 110, height: 110)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.15), value: moving)
                
                Circle()
                    .stroke(lineWidth: 4)
                    .frame(width: 140, height: 140)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.2), value: moving)
                
                Circle()
                    .stroke(lineWidth: 4.5)
                    .frame(width: 170, height: 170)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.25), value: moving)
                
                Circle()
                    .stroke(lineWidth: 5)
                    .frame(width: 200, height: 200)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.3), value: moving)
                
                Circle()
                    .stroke(lineWidth: 5.5)
                    .frame(width: 230, height: 230)
                    .foregroundColor(.white)
                    .rotation3DEffect(
                        .degrees(75),axis: (x: 1, y: 0, z: 0))
                    .offset(y: moving ? 150 : -180)
                    .animation(.interpolatingSpring(stiffness: 100, damping: 5).repeatForever(autoreverses: true).delay(0.35), value: moving)
            }
            .onAppear {
                moving.toggle()
            }
        .padding()
        }
    }
}

#Preview {
    FinalView()
}
