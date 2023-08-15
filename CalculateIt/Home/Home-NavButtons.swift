//
//  Home-NavButtons.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/15/23.
//

import SwiftUI

/// This is the button design used in the below navigational buttons
struct HomeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.white)
            .font(.custom("BricolageGrotesque-Light", size: 25))
            .frame(width: 240, height: 45)
            .background(.purple.opacity(0.6).gradient)
            .cornerRadius(15)
            .shadow(color: .white.opacity(0.5), radius: 2, x: 0.0, y: 0.5)
    }
}
/// These are the navigational buttons that are used on the home screen
struct HomeNavigation {
    var bmi: some View {
        NavigationLink {
            BMIView()
        } label: {
            Label("BMI", systemImage: "scalemass.fill")
                .modifier(HomeButton())
        }
    }
    var calculator: some View {
        NavigationLink {
            MathView()
        } label: {
            Label("Math", systemImage: "number")
                .modifier(HomeButton())
        }
    }
    var loveScore: some View {
        NavigationLink {
            LoveView()
        } label: {
            Label("LoveScore", systemImage: "heart.circle.fill")
                .modifier(HomeButton())
        }
    }
    var conversion: some View {
        NavigationLink {
            ConversionView()
        } label: {
            Label("Conversion", systemImage: "arrow.left.arrow.right")
                .modifier(HomeButton())
        }
    }
    var tdeeAndMacros: some View {
        NavigationLink {
            MacroView()
        } label: {
            Label("Macros", systemImage: "birthday.cake.fill")
                .modifier(HomeButton())
        }
    }
    var serverTip: some View {
        NavigationLink {
            TipView()
        } label: {
            Label("Calculate Tip", systemImage: "cup.and.saucer.fill")
                .modifier(HomeButton())
        }
    }
}
