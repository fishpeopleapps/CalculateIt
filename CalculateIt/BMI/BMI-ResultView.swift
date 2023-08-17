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
    let components = BMIResultsComponents()
    var userBMI: Double
    @State private var showRecommendations = false
    var body: some View {
        ZStack {
            components.bmiResultsBG
            VStack {
                Text("\(userBMI, specifier: "%.1f")")
                    .font(.custom("Barriecito-Regular", size: 100, relativeTo: .largeTitle))
                    .foregroundColor(.white)
                if userBMI < 18.5 {
                    components.underweight
                } else if userBMI <= 24.9 {
                    components.healthy
                } else if userBMI <= 29.9 {
                    components.overweight
                } else {
                    components.obese
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
