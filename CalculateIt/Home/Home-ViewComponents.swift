//
//  Home-ViewComponents.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import SwiftUI

/// These are the design components used on the home screen
struct HomeComponents {
    // I am the pretty background that goes to the edge of the phone
    var background: some View {
        LinearGradient(
            colors: [.purple, .mint, .teal],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
    // I am the large title
    // TODO: I need to be fixed to be dynamic on other sized phones
    var title: some View {
        Text("Calculate It")
            .font(.custom("BricolageGrotesque-Medium", size: 55))
            .foregroundColor(.white)
            .textCase(.uppercase)
    }
    // I am the small sub title that appears directly below the title above
    // TODO: I need to be fixed to be dynamic on other sized phones
    var subTitle: some View {
        Text("The Ultimate Practice App")
            .font(.custom("BricolageGrotesque-Light", size: 20))
            .foregroundColor(.white.opacity(0.7))
            .textCase(.lowercase)
    }
    // I am the toggle menu button that appears on the home page
    // TODO: I should also be fixed to be a bit dyanmic
    var toggleMenuButton: some View {
        Text("Toggle Menu")
            .font(.custom("BricolageGrotesque-Regular", size: 25))
            .foregroundColor(.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 70)
            .background(.gray.opacity(0.3).gradient)
            .cornerRadius(15)
    }
}


