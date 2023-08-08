//
//  BMIView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/3/23.
//
// TODO: Add guard statements so users can't enter stupid information
// TODO: UI

import SwiftUI

struct BMIView: View {
    @StateObject var bmi = BMIViewModel()
    var bmiComponents = BMIViewComponents()
    @State private var displayBMI = false
    var body: some View {
        VStack {
            bmiComponents.warning
            Spacer()
            HStack {
                Text("Pounds:")
                TextField("Weight", value: $bmi.userWeight, format: .number)
                    .keyboardType(.numberPad)
                    .frame(width: 100)
                    .textFieldStyle(.roundedBorder)
            }
            HStack {
                Text("Feet:")
                TextField("feet", value: $bmi.userHeightInFeet, format: .number)
                    .keyboardType(.numberPad)
                    .frame(width: 80)
                    .textFieldStyle(.roundedBorder)
                Text("Inches:")
                TextField("inches", value: $bmi.userHeightInInches, format: .number)
                    .keyboardType(.numberPad)
                    .frame(width: 80)
                    .textFieldStyle(.roundedBorder)
            }
            VStack {
                NavigationLink {
                    BMIResultView(userBMI: bmi.userBMI)
                } label: {
                    Text("Calculate BMI")
                        .padding()
                        .cornerRadius(15)
                        .foregroundStyle(Color.white)
                        .background(.blue.gradient)
                }

//                if displayBMI {
//                    Text("\(bmi.userBMI, specifier: "%.1f")")
//                }
                Spacer()
            }
            .onTapGesture {
                displayBMI.toggle()
            }
        }
        .padding()
    }

}
