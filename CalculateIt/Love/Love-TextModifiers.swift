//
//  Love-TextModifiers.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/11/24.
//

import SwiftUI

struct HeartText: ViewModifier {
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.custom("HeartsForAll", size: size))
    }
}

struct InputText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .monospaced()
    }
}

extension View {
    func inputStyle() -> some View {
        modifier(InputText())
    }
}
