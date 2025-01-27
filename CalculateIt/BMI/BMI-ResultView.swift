//
//  BMI-ResultView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

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
                switch userBMI {
                case 0...18.5: // Less than 18.5
                        components.underweight
                case 18.5...24.9: // Between 18.5 and 24.9
                    components.healthy
                case 25.0...29.9: // Between 25.0 and 29.9
                    components.overweight
                default: // Anything 30.0 or above
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
