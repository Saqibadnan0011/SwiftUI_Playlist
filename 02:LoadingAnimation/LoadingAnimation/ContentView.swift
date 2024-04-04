//
//  ContentView.swift
//  LoadingAnimation
//
//  Created by Saqib Adnan on 26/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                FinalView()
                    .frame(width: 50, height: 50)
            }
        }
    }
}

#Preview {
    ContentView()
}
