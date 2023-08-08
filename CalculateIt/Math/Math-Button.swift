//
//  Math-Buttons.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import SwiftUI

struct MathButton: View {
    var name: String
    var body: some View {
        Text(name)
            .font(.largeTitle).bold()
            .foregroundStyle(.white)
            .frame(
                minWidth: 25,
                idealWidth: 50,
                maxWidth: .infinity,
                minHeight: 25,
                idealHeight: 50,
                maxHeight: .infinity)
            .background(.blue)
            .cornerRadius(15)
            .shadow(color: .yellow, radius: 2)
    }
}

struct MathButtons_Previews: PreviewProvider {
    static var previews: some View {
        MathButton(name: "X")
    }
}
