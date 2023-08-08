//
//  BMI-ResultView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//
// TODO: Use an enum? for the background color maybe
// TODO: Improve Recommendations View, extract from this view

import SwiftUI

struct BMIResultView: View {
    var userBMI: Double
    @State private var showRecommendations = false
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.mint, .teal],
                startPoint: .top,
                endPoint: .bottom
            )
                .ignoresSafeArea()
            VStack {
                Text("This is the userBMI \(userBMI, specifier: "%.1f")")
                if userBMI < 18.5 {
                    Text("You're underweight")
                } else if userBMI <= 24.9 {
                    Text("You're healthy")
                } else if userBMI <= 29.9 {
                    Text("you're overweight")
                } else {
                    Text("You're obese")
                    Button("Improve BMI") {
                        showRecommendations.toggle()
                    }
                }
            }
            .sheet(isPresented: $showRecommendations) {
                Text("try working out")
            }
        }
    }

}

struct BMIResultView_Previews: PreviewProvider {
    static var previews: some View {
        BMIResultView(userBMI: 25.43)
    }
}
