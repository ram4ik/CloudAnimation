//
//  ContentView.swift
//  CloudAnimation
//
//  Created by admin on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showRain = false
    @State private var cloudMovement = false
    @State private var showBolt = false
    
    var body: some View {
        ZStack {
            HStack(spacing: 15) {
                Rain(height: 20, offset: 30)
                Rain(height: 60, offset: 30)
                Rain(height: 40, offset: 10)
                Rain(height: 30, offset: 30)
                Rain(height: 50, offset: 0)
            }
            .opacity(showRain ? 0 : 1)
            .rotationEffect(.degrees(40))
            .offset(x: showRain ? -80 : 0, y: showRain ? 100 : 0)
            .offset(x: 30, y: 5)
            
            Image(systemName: "cloud.fill")
                .font(.system(size: 150))
                .foregroundStyle(.gray)
                .offset(x: cloudMovement ? 10 : -10)
                
            
            Image(systemName: "bolt.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 50, height: 50)
                .offset(x: -30, y: 70)
                .opacity(showBolt ? 1 : 0)
        }
        .ignoresSafeArea()
        .onAppear() {
            withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: false)) {
                showRain.toggle()
            }
        }
        .onAppear() {
            withAnimation(.linear(duration: 0.6).repeatForever(autoreverses: true)) {
                cloudMovement.toggle()
            }
        }
        .onAppear() {
            withAnimation(.linear.speed(0.9).repeatForever(autoreverses: true)) {
                showBolt.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
