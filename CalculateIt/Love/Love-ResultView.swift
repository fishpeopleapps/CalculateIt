//
//  Love-ResultView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import SwiftUI

struct LoveResultView: View {
    @State var score: Int
    var body: some View {
        ZStack {
            Text(loveScoreResult(score: score))
        }
        
    }
    func loveScoreResult(score: Int) -> String {
        if score < 21 {
            return "I don't think you're going to make it"
        } else if score < 71 {
            return "Could go either way"
        } else if score < 91 {
            return "You stand a fighting chance"
        } else {
            return "You were made for each other!"
        }
    }
}

struct LoveResultView_Previews: PreviewProvider {
    static var previews: some View {
        LoveResultView(score: 55)
    }
}
