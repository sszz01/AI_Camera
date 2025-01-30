//
//  ContentView.swift
//  AI_Camera
//
//  Created by Oleksandr Voievodin on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                
                VStack {
                    Text("Press the button to scan the area")
                        .font(.headline)
                        .foregroundStyle(.secondary)
                    
                    NavigationLink(destination: FrameView(image: model.frame)) {
                        Text("Launch Camera")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .padding(30)
                    }
                }
                .padding()
            }
            .navigationTitle("YOLOv11 camera")
        }
    }
}

#Preview {
    ContentView()
}

