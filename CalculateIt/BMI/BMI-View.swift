//
//  BMIView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/3/23.
//

import SwiftUI

struct BMIView: View {
    @StateObject var bmi = BMIViewModel()
    var bmiComponents = BMIViewComponents()
    @State private var displayBMI = false
    @State private var isShowingAlert = false
    var body: some View {
        GeometryReader { geo in
        ZStack {
            bmiComponents.background
                VStack {
                    // Holds the title
                    VStack(alignment: .center) {
                        bmiComponents.title
                        bmiComponents.subTitle
                    }
                    .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.25)
                    // Holds the User Information
                    ZStack {
                        bmiComponents.bmiRectangle
                        VStack {
                            bmiComponents.userTitle
                            HStack {
                                StatBox(text: "Pounds:")
                                TextField("Weight", value: $bmi.userWeight, format: .number)
                                    .bmiTextFieldStyle(width: 100)
                            }
                            HStack {
                                StatBox(text: "Feet:")
                                TextField("feet", value: $bmi.userHeightInFeet, format: .number)
                                    .bmiTextFieldStyle()
                                StatBox(text: "Inches")
                                TextField("inches", value: $bmi.userHeightInInches, format: .number)
                                    .bmiTextFieldStyle()
                            }
                        }
                    }
                    .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.25)
                    // Holds the Results Button
                    VStack {
                        NavigationLink {
                            BMIResultView(userBMI: bmi.userBMI)
                        } label: {
                            bmiComponents.getYourResults
                                .padding(.horizontal, 20)
                        }
                        if !bmi.hasValidEntries { bmiComponents.disclaimerText }
                    }
                    .disabled(bmi.hasValidEntries == false)
                    .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.25)
                    .onTapGesture { displayBMI.toggle() }
                    Spacer()
                }
                .sheet(isPresented: $isShowingAlert) { BMIWarningView() }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            isShowingAlert.toggle()
                        } label: {
                            bmiComponents.alertIcon
                        }
                    }
                }
            }
        }
    }
}

struct BMIView_Previews: PreviewProvider {
    static var previews: some View {
        BMIView()
    }
}
