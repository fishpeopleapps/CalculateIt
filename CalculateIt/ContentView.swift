//
//  ContentView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/3/23.
//
// TODO: App Icon and Launch Screen

import SwiftUI

struct ContentView: View {
    var calculators = ["math", "love", "bmi", "macro", "conversion", "tip"]
    var body: some View {
        NavigationView {
            VStack {
                ForEach(calculators, id: \.self) { calculator in
                    NavigationLink {
                        EmptyView()
                    } label: {
                        Text(calculator.uppercased())
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
