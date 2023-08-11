//
//  Tip-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/8/23.
//

import Foundation

class TipViewModel: ObservableObject {
    @Published var subTotal: Double = 0 // total that is used to calculate the tip
    @Published var userState = false // if the user lives in a cheap state
    @Published var rating = 0 // user rating of the service
    // @Published var tipAmount = 0.0 // amount to tip
    @Published var fullTotal = 0.0 // total that is used to calculate the tipAmount
    // these states do not have to compensate for wages not equalling federal minimum of $7.25/hr
    // ie they can getaway with giving their employees less than $3/hour
    let cheapStates = [
    "Alabama",
    "Georgia",
    "Mississippi",
    "South Carolina",
    "Tennessee"
    ]
    let cheapReason = """
                      Most of the US States require employers to pay up to federal \
                      minimum wage if an employee does not receive enough tips. \
                      Alabama, Georgia, Mississippi, South Carolina, and Tennessee do \
                      not. This means if people don't tip your server here, they \
                      can legally get paid less than $3.00/hour.
                      """
    var ratingResult: Double {
        if rating == 5 {
            return 1.15
        } else if rating == 4 {
            return 1.1
        } else {
            return 1.0
        }
    }
    var justTheTip: Double {
        // get the subTotal and add on a tip based on their rating
        var tipAmount = subTotal * ratingResult
        // determine if the user lives in a cheap state, if yes, add on $5
        if userState == true {
            tipAmount += 5.00
        }
        // get just the tip amount
        tipAmount -= subTotal
        return tipAmount
    }
    var total: Double {
         fullTotal + justTheTip
    }
}
