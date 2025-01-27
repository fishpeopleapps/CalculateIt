//
//  MathView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//
// TODO: I feel like this should be in a grid...

import SwiftUI

struct MathView: View {
    var body: some View {
        VStack {
            HStack {
                MathButton(name: "0")
            }
            HStack {
                MathButton(name: "AC") // I don't even know what this does
                MathButton(name: "+/-") // or this for that matter
                MathButton(name: "%")
                MathButton(name: "÷")
            }
            HStack {
                MathButton(name: "\(7)")
                MathButton(name: "\(8)")
                MathButton(name: "\(9)")
                MathButton(name: "x")
            }
            HStack {
                MathButton(name: "\(4)")
                MathButton(name: "\(5)")
                MathButton(name: "\(6)")
                MathButton(name: "-")
            }
            HStack {
                MathButton(name: "\(1)")
                MathButton(name: "\(2)")
                MathButton(name: "\(3)")
                MathButton(name: "+")
            }
            HStack {
                MathButton(name: "\(2)") // should be twice as long
                MathButton(name: ".")
                MathButton(name: "=")
            }
        }
        .padding(.horizontal)
        .padding()
    }
}

struct MathView_Previews: PreviewProvider {
    static var previews: some View {
        MathView()
    }
}
