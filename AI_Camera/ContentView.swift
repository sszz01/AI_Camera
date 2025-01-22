//
//  ContentView.swift
//  AI_Camera
//
//  Created by Oleksandr Voievodin on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Launch Camera") {
                print("launch camera...")
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: .gray, radius: 5, x: 0, y: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
