//
//  BMI-ViewExtension.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 1/24/25.
//

import SwiftUI

extension View {
    func bmiTextFieldStyle(width: CGFloat = 80) -> some View {
        self
            .keyboardType(.numberPad)
            .frame(width: width)
            .textFieldStyle(.roundedBorder)
    }
}
