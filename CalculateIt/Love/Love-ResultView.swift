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
        Text("Your love score is \(score)")
    }
}

struct LoveResultView_Previews: PreviewProvider {
    static var previews: some View {
        LoveResultView(score: 55)
    }
}
