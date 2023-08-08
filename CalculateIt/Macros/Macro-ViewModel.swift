//
//  Macro-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/8/23.
//

import Foundation

class MacroViewModel: ObservableObject {
    @Published var userGender = ""
    @Published var userWeight = 0
    @Published var userHeightInFeet = 5
    @Published var userHeightInInches = 5
    @Published var userAge = 30
    @Published var userActivityLevel = ""
    let genders = ["male", "female"]
    let activityLevels = ["sedentary", "light", "moderate", "heavy", "extreme"]
    var totalUserInches: Double {
        Double(userHeightInFeet * 12 + userHeightInInches)
    }
    var bmr: Double {
        if userGender == "female" {
            var partOne = 4.35 * Double(userWeight)
            var partTwo = 4.7 * totalUserInches
            var partThree = 4.7 * Double(userAge)
            return Double(655.1 + partOne + (partTwo) - (partThree))
        } else {
            return 0.0
          //  return Double(66 + (6.2 * userWeight) + (12.7 * totalUserInches) - (6.76 * userAge))
        }
    }
    var tdee: Int {
        if userActivityLevel == "sedentary" {
            return Int(bmr * 1.2)
        } else if userActivityLevel == "light" {
            return Int(bmr * 1.375)
        } else if userActivityLevel == "moderate" {
            return Int(bmr * 1.55)
        } else if userActivityLevel == "heavy" {
            return Int(bmr * 1.725)
        } else if userActivityLevel == "extreme" {
            return Int(bmr * 1.9)
        }
        return 1
    }
    // TODO: add a bool for if they lift weights, or are trying to lose weight
    // then we have to calculate macros
    // best vegan macros include:
    // 20% protein ~ 4 cals per gram
    // 55% carbs ~ 4 cals per gram
    // 25% fat ~ 9 cals per gram
}
