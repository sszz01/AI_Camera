//
//  FrameView.swift
//  AI_Camera
//
//  Created by Oleksandr Voievodin on 1/27/25.
//

import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private let label = Text("Frame")
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            if let image = image {
                Image(image, scale: 1.0, label: label) // orientation: .up
            } else {
                ZStack {
                    Color.black.opacity(0.7)
                        .ignoresSafeArea()
                    Text("Error loading the image")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Image(systemName: "arrow.left.circle")
                        Text("Back")
                            .fontWeight(.bold)
                    }
                }
            }
        }
    }
}

#Preview {
    FrameView()
}
