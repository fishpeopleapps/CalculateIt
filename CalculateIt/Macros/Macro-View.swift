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
        NavigationView {
            ZStack {
                LinearGradient(colors: [.cyan, .mint, .teal], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                Form {
                    Section {
                        // get gender
                        Picker("What is your gender?", selection: $macros.userGender) {
                            ForEach(macros.genders, id: \.self) {
                                Text($0)
                            }
                        }
                        HStack {
                            // get weight
                            Text("Weight in #s?")
                            Spacer()
                            TextField("", value: $macros.userWeight, format: .number)
                                .keyboardType(.numberPad)
                                .frame(width: 120)
                                .multilineTextAlignment(.trailing)
                        }
                        HStack {
                            // get height
                            Text("Feet:")
                            TextField("feet", value: $macros.userHeightInFeet, format: .number)
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(.roundedBorder)
                                .multilineTextAlignment(.trailing)
                            Spacer()
                            Text("Inches:")
                            TextField("inches", value: $macros.userHeightInInches, format: .number)
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(.roundedBorder)
                                .multilineTextAlignment(.trailing)
                        }
                        // get age
                        Picker("What is your age?", selection: $macros.userAge) {
                            ForEach(16..<90) {
                                Text("\($0)")
                            }
                        }
                    } header: {
                        Text("Calculate Your BMR")
                    }
                    Section {
                        // you should have BMR at this point
                        Text("Your BMR is \(macros.bmr.formatted(.number.precision(.fractionLength(0))))")
                    } header: {
                        Text("Your BMR")
                    }
                    Section {
                        // get activity level and output TDEE
                        Picker("Choose Your Activity Level", selection: $macros.userActivity) {
                            ForEach(ActivityType.allCases, id: \.self) { level in
                                let menuText = level.stringValue()
                                Text("\(menuText)")
                                    .tag(level)
                            }
                        }
                        Text("Your TDEE is : \(macros.getTDEE(activityLevel: macros.userActivity))")
                    } header: {
                        Text("Calculate TDEE")
                    }
                    Section {
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Calculate Macros")
                        }
                    } header: {
                        Text("Next")
                    }
                }
                .scrollContentBackground(.hidden)
            }
        }
        .navigationTitle("Macro Calculator")
    }
}

struct MacroView_Previews: PreviewProvider {
    static var previews: some View {
        MacroView()
    }
}
