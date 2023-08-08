//
//  MacroView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import SwiftUI

struct MacroView: View {
    @StateObject var macros = MacroViewModel()


    var body: some View {
        ScrollView {
            // Determine BMR
            VStack {
                // get gender
                Picker("What is your gender?", selection: $macros.userGender) {
                    ForEach(macros.genders, id: \.self) {
                        Text($0)
                    }
                }
                HStack {
                    // get weight
                    Text("What is your weight:")
                    TextField("Enter your weight in #s", value: $macros.userWeight, format: .number)
                        .keyboardType(.numberPad)
                }
                HStack {
                    // get height
                    Text("Feet:")
                    TextField("feet", value: $macros.userHeightInFeet, format: .number)
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                        .textFieldStyle(.roundedBorder)
                    Text("Inches:")
                    TextField("inches", value: $macros.userHeightInInches, format: .number)
                        .keyboardType(.numberPad)
                        .frame(width: 80)
                        .textFieldStyle(.roundedBorder)
                }
                // get age
                Text("What is your age?")
                Picker("What is your age?", selection: $macros.userAge) {
                    ForEach(16..<90) {
                        Text("\($0)")
                    }
                }
                // you should have BMR at this point
                Text("Your BMR is: \(macros.bmr)")
                // get activity level
                Text("Your TDEE is: \(macros.tdee)")
                // output TDEE
                Picker("What is your activity level?", selection: $macros.userActivityLevel) {
                    ForEach(macros.activityLevels, id: \.self) {
                        Text("\($0)")
                    }
                }
                
            }
        }


    }
}

struct MacroView_Previews: PreviewProvider {
    static var previews: some View {
        MacroView()
    }
}
