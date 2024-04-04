//
//  FinalView.swift
//  LoadingAnimation
//
//  Created by Saqib Adnan on 26/03/2024.
//

import SwiftUI
import Lottie

struct FinalView: View {
    var body: some View {
        VStack {
            LottieView(animationFileName: "Animation - 1711370189433", loopMode: .loop)
                .frame(width: 50, height: 50)
        }
    }
}

struct LottieView: UIViewRepresentable {
    
    var animationFileName: String
    let loopMode: LottieLoopMode
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        //
    }
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: animationFileName)
        animationView.loopMode = loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFit
        
        return animationView
    }
}
