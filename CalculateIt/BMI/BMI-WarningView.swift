//
//  BMIWarningView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/17/23.
//

import SwiftUI

struct BMIWarningView: View {
    let components = BMIViewComponents()
    var body: some View {
        ZStack {
            components.background
            VStack {
                HStack {
                    components.alertIcon2
                    components.alertIcon2
                    components.alertIcon2
                }
                components.warningText
            }
            .padding(.horizontal, 10)
        }
    }
}

struct BMIWarningView_Previews: PreviewProvider {
    static var previews: some View {
        BMIWarningView()
    }
}
