//
//  Macro-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/8/23.
//

import Foundation
import SwiftUI

class MacroViewModel: ObservableObject {
    @Published var userGender = "female"
    @Published var userWeight = 0
    @Published var userHeightInFeet = 5
    @Published var userHeightInInches = 5
    @Published var userAge = 30
    @Published var userActivity: ActivityType = .medium
    let genders = ["male", "female"]
    var totalUserInches: Double {
        Double(userHeightInFeet * 12 + userHeightInInches)
    }
    var bmr: Double {
        if userGender == "female" {
            let partOne = 4.35 * Double(userWeight)
            let partTwo = 4.7 * totalUserInches
            let partThree = 4.7 * Double(userAge)
            return Double(655.1 + partOne + (partTwo) - (partThree))
        } else {
            let part1 = 6.2 * Double(userWeight)
            let part2 = 12.7 * totalUserInches
            let part3 = 6.76 * Double(userAge)
            return Double(66 + (part1) + (part2) - (part3))
        }
    }
    func getTDEE(activityLevel: ActivityType) -> Int {
        switch activityLevel {
        case .none:
            return Int(bmr * 1.2)
        case .light:
            return Int(bmr * 1.375)
        case .medium:
            return Int(bmr * 1.55)
        case .heavy:
            return Int(bmr * 1.725)
        case .intense:
            return Int(bmr * 1.9)
        }
    }
    var userTDEE: Int {
        getTDEE(activityLevel: userActivity)
    }
    // TODO: add a bool for if they lift weights, or are trying to lose weight
    // best vegan macros include:
    // 20% protein ~ 4 cals per gram
    var protein: Int {
        Int((Double(userTDEE) * 0.20) / 4)
    }
    // 55% carbs ~ 4 cals per gram
    var carbohydrates: Int {
        Int((Double(userTDEE) * 0.55) / 4)
    }
    // 25% fat ~ 9 cals per gram
    var fat: Int {
        Int((Double(userTDEE) * 0.25) / 9)
    }
    // TODO: Get this to work so the numbers animate when they move up
//    struct CountingText: View, Animatable {
//        var value: Double
//        var fractionLength = 0
//        var animatableData: Double {
//            get { value }
//            set { value = newValue }
//        }
//        var body: some View {
//            Text("\(value.formatted(.number.precision(.fractionLength(fractionLength))))")
//        }
//    }
}
