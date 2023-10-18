//
//  Rain.swift
//  CloudAnimation
//
//  Created by admin on 10/18/23.
//

import SwiftUI

struct Rain: View {
    var height: CGFloat = 0
    var offset: CGFloat = 0
    
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: 5, height: height)
            .offset(y: offset)
            .foregroundStyle(.blue.gradient)
    }
}

#Preview {
    Rain()
}
