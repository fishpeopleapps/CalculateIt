//
//  BMI-ResultsViewComponents.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/17/23.
//

import SwiftUI

struct BMIResultsComponents {
    // holds the background
    var bmiResultsBG: some View {
        LinearGradient(
            colors: [.mint, .teal],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
    // result options
    var underweight: some View {
        VStack {
            ResultTitleText(result: "You are Underweight")
            ResultSubtitleText(message: """
                    Try drinking more smoothies, eating more nut/seed butters, \
                    and complex carbohydrates like brown rice and farro
                    """
            )
        }
    }
    var healthy: some View {
        VStack {
            ResultTitleText(result: "You are Healthy")
            ResultSubtitleText(message: "Keep up the good work!")
        }
    }
    var overweight: some View {
        VStack {
            ResultTitleText(result: "You are Overweight")
            ResultSubtitleText(message: """
                    Skip the sugary drinks, fried foods, and focus on \
                    eating more fresh fruits and vegetables
                    """
            )
        }
    }
    var obese: some View {
        VStack {
            ResultTitleText(result: "You are Obese")
            ResultSubtitleText(message: "Try a WFPB-NO Lifestyle")
        }
    }
}

struct ResultTitleText: View {
    var result: String
    var body: some View {
        Text(result)
            .font(.custom("Barriecito-Regular", size: 30, relativeTo: .largeTitle))
            .foregroundColor(.black)
            .padding()
            .border(.black.opacity(0.7))
    }
}

struct ResultSubtitleText: View {
    var message: String
    var body: some View {
        Text(message)
            .font(.custom("BricolageGrotesque-Light", size: 18, relativeTo: .largeTitle))
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .padding()
    }
}
