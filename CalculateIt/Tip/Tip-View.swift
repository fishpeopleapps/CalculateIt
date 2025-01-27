//
//  TipView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//
import SwiftUI

struct TipView: View {
    @StateObject var tip = TipViewModel()
    private var stateInitials = "AL, GA, MS, SC, or TN"
    @State private var whyMatters = false
    var body: some View {
        NavigationView {
            ZStack {
                RadialGradient(colors: [.mint, .indigo], center: .topLeading, startRadius: 125, endRadius: 750)
                    .ignoresSafeArea()
                Form {
                    Section {
                        HStack {
                            // Get the subtotal bill
                            Text("Total Before Tax:")
                            Spacer()
                            TextField("Amount", value: $tip.subTotal, format: .currency(code: "USD"))
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                                .multilineTextAlignment(.trailing)
                        }
                        HStack {
                            // Get the subtotal bill
                            Text("Total After Tax:")
                            Spacer()
                            TextField("Amount", value: $tip.fullTotal, format: .currency(code: "USD"))
                                .keyboardType(.numberPad)
                                .frame(width: 100)
                                .multilineTextAlignment(.trailing)
                        }
                        HStack {
                            Text("Rate the service:")
                            Spacer()
                            // rate the service
                            RatingView(tipVM: tip)
                        }
                    }
                    Section {
                            // determine which state the user lives in
                            Toggle("\(stateInitials)", isOn: $tip.userState)
                        Button("read why it matters") {
                            withAnimation { whyMatters.toggle() }
                        }
                        if whyMatters {
                            Text(tip.cheapReason)
                                .multilineTextAlignment(.leading)
                        }
                    } header: {
                        Text("Are you in one of these states?")
                    }
                    Section {
                        HStack {
                            Spacer()
                            Text("$\(tip.total, specifier: "%.2f")")
                                .font(.title3).bold()
                            Spacer()
                        }
                    } header: {
                        Text("Your Total")
                            .font(.title2)
                    } footer: {
                        Text("that's a total tip of $\(tip.justTheTip, specifier: "%.2f")")
                            .foregroundColor(.white.opacity(0.72))
                    }
                }
                .scrollContentBackground(.hidden)
                .navigationTitle("Tip Calculator")
            }

        }
    }
}

struct TipView_Previews: PreviewProvider {
    static var previews: some View {
        TipView()
    }
}
