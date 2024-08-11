//
//  LoveScore-ViewModel.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//
// TODO: Reduce repeating code and add text modifiers here or in another document


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
        for char in combinedName {
            if char == "t" || char == "r" || char == "u" || char == "e" {
                trueScore += 1
            }
        }
        score += String(trueScore)
        // determine how many times love appears, make digit 2
        for char in combinedName {
            if char == "l" || char == "o" || char == "v" || char == "e" {
                loveScore += 1
            }
        }
        score += String(loveScore)
        return Int(score) ?? 0
    }
}
