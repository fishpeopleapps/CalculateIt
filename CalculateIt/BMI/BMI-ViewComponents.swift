//
//  BMI-ViewComponents.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/4/23.

import SwiftUI

struct BMIViewComponents {
    var background: some View {
    LinearGradient(
        colors: [.red, .orange, .brown],
        startPoint: .bottomTrailing,
        endPoint: .topLeading
    )
    .ignoresSafeArea()
}
    // Alert Related
    var alertIcon: some View {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundColor(.white)
                .font(.title2)
                .shadow(color: .orange, radius: 1)
    }
    var alertIcon2: some View {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundColor(.black)
                .font(.title)
                .shadow(color: .red, radius: 1)
    }
    var warningText: some View {
        Text("""
If you lift weights this calculator is
not a good representation of your health
"""
        )
        .font(.custom("BricolageGrotesque-Medium", size: 25, relativeTo: .title2))
        .foregroundColor(.black)
        .textCase(.lowercase)
        .multilineTextAlignment(.center)
        .padding()
    }
    // Title Top Section
    var title: some View {
        Text("Body Mass Index")
            .font(.custom("Barriecito-Regular", size: 50, relativeTo: .largeTitle))
            .foregroundColor(.white)
    }
    var subTitle: some View {
        Text("Calculator").kerning(0.5)
            .font(.custom("Barriecito-Regular", size: 35, relativeTo: .title2))
            .foregroundColor(.white.opacity(0.8))
            .textCase(.lowercase)
    }
    // Enter Your Stats Box
    var bmiRectangle: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(.white.opacity(0.4))
            .padding(.horizontal, 20)
    }
    var userTitle: some View {
        Text("Enter Your Stats")
            .font(.custom("Barriecito-Regular", size: 35, relativeTo: .title))
            .foregroundColor(.black.opacity(0.8))
    }
    // Results Button - Bottom Section
    var getYourResults: some View {
        Text("Get Your Results")
            .font(.custom("Barriecito-Regular", size: 25, relativeTo: .title3))
            .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 55)
            .background(Color.brown.gradient.opacity(0.6))
            .cornerRadius(15)
            .foregroundStyle(Color.white)
    }
    var disclaimerText: some View {
        Text("Please correct your stats").kerning(1)
            .font(.custom("BricolageGrotesque-Medium", size: 18, relativeTo: .caption))
            .foregroundColor(.black)
            .textCase(.lowercase)
    }
}

struct StatBox: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.custom("Barriecito-Regular", size: 25, relativeTo: .title3))
            .foregroundColor(.black)
            .textCase(.lowercase)
    }
}
