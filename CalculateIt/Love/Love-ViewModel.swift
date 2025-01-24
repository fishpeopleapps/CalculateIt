//
//  LoveScore-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import Foundation

class LoveViewModel: ObservableObject {
    @Published var name01 = ""
    @Published var name02 = ""

    func loveScore(name1: String, name2: String) -> Int {
        var score = ""
        var trueScore = 0
        var loveScore = 0
        // take both people's names
        let combinedName = (name1 + name2).lowercased()
        // determine how many times true appears, make digit 1
        let trueChars = "true"
        for char in combinedName where trueChars.contains(char) { trueScore += 1 }
        score += String(trueScore)
        // determine how many times love appears, make digit 2
        let loveChars = "love"
        for char in combinedName where loveChars.contains(char) { loveScore += 1 }
        // combine the score and return the int value
        score += String(loveScore)
        return Int(score) ?? 0
    }
}
