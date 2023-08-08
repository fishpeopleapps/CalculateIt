//
//  Home-ViewComponents.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import SwiftUI

struct HomeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .font(.title2)
            .frame(width: 240, height: 45)
            .background(.black)
            .cornerRadius(15)
            .shadow(color: .mint, radius: 2)
    }
}

struct HomeViewComponents {
    var body: some View {
        Text("Hello world")
    }
}
