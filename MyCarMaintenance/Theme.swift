//
//  Theme.swift
//  MyCarMaintenance
//
//  Created by Alfred Carra on 6/16/25.
//

import SwiftUI

struct Theme {
    static let mainBackground = Color("MainBackground")
    static let accentGray = Color("AccentGray")
    static let accentRed = Color("AccentRed")
}

extension View {
func inputStyle() -> some View {
    self
        .padding()
        .background(Theme.accentGray)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke (Color.gray.opacity(0.3), lineWidth: 1)
        )
}
    func primaryButtonStyle() -> some View {
        self
            .frame(maxWidth: .infinity)
            .padding()
            .background(Theme.accentRed)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
    
    
}

// reuasbale app icon image
struct PrimaryAppIcon: View {
    
    var body: some View {
        Image("FocusSTImg")
            .resizable()
            .frame(width: 200, height: 200)
            .scaledToFit()
    }
    
}
