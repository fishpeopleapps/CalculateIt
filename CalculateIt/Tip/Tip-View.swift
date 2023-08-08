//
//  TipView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//
// TODO: Improve UI
// TODO: Include PSA on the states that suck
import SwiftUI

struct TipView: View {
    @StateObject var tip = TipViewModel()

    var body: some View {
        NavigationView {
            Form {
                Section {
                    // Get the subtotal bill
                    Text("Enter the sub total:")
                    TextField("Amount", value: $tip.billTotal, format: .currency(code: "USD"))
                        .keyboardType(.numberPad)

                }
                Section {
                    // determine which state the user lives in
                    Toggle("In AL, GA, MS, SC, or TN?", isOn: $tip.userState)
                    // rate the service
                    Picker("Rate the service:", selection: $tip.rating) {
                        ForEach(0..<6) {
                            Text("\($0)")
                        }
                    }
                    Text("(Select '0' if it was a pick-up order)")
                }
                Section {
                    Text("Here is your total including tip $\(tip.total, specifier: "%.2f")")
                }
            }
        }
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
