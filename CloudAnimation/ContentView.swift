//
//  ContentView.swift
//  CloudAnimation
//
//  Created by admin on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
