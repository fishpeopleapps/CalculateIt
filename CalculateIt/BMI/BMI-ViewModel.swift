//
//  BMI-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/4/23.
//

import SwiftUI

class BMIViewModel: ObservableObject {
    @Published var userWeight: Double = 150
    @Published var userHeightInFeet: Int = 5
    @Published var userHeightInInches: Int = 5
    // @Published var userBMI = 18.4
    var userBMI: Double {
        Double(userWeight / (totalUserInches * totalUserInches) * 703) // needs to be rounded to 1 decimal place
    }
    var totalUserInches: Double {
        Double(userHeightInFeet * 12 + userHeightInInches)
    }
    func calcBMI(weight: Double, height: Double) -> Double {
        (weight / (height * height)) * 703 // needs to be rounded to 1 decimal place
    }
}
