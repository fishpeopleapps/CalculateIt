//
//  Tip-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/8/23.
//

import Foundation

class TipViewModel: ObservableObject {
    @Published var billTotal: Double = 0 // how much the user's bill was (subtotal)
    @Published var userState = false // if the user lives in a cheap state
    @Published var rating = 0 // user rating of the service
    @Published var tipAmount = 0.0 // amount to tip
    // these states do not have to compensate for wages not equalling federal minimum of $7.25/hr
    // ie they can getaway with giving their employees less than $3/hour
    let cheapStates = [
    "Alabama",
    "Georgia",
    "Mississippi",
    "South Carolina",
    "Tennessee"
    ]
    var ratingResult: Double {
        if rating == 5 {
            return 1.15
        } else if rating == 4 {
            return 1.1
        } else {
            return 1.0
        }
    }
    var total: Double {
        // get the total bill and add on a tip based on their rating
        var userTotal = billTotal * ratingResult
        // determine if the user lives in a cheap state, if yes, add on $5
        if userState == true {
            userTotal += 5.00
        }
        // output total
        return userTotal
    }
}
