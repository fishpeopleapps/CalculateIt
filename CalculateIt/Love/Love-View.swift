//
//  LoveScoreview.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//

import SwiftUI

struct LoveView: View {
    @StateObject var love = LoveViewModel()
    var body: some View {
        ZStack {
            LinearGradient(colors: [.pink, .red], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            VStack {
                TextField(
                    "Enter the first name",
                    text: $love.name01
                )
                .textFieldStyle(.roundedBorder)
                TextField(
                    "Enter the second name",
                    text: $love.name02
                )
                .textFieldStyle(.roundedBorder)
                NavigationLink {
                    LoveResultView(score: love.loveScore(name1: love.name01, name2: love.name02))
                } label: {
                    Text("Calculate Score")
                        .font(.title2).bold()
                        .foregroundStyle(.white)
                }
            }
            .padding()
        }

    }
}

struct LoveScoreview_Previews: PreviewProvider {
    static var previews: some View {
        LoveView()
    }
}
