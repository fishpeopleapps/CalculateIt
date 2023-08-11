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
                    Text("Love Calculator")
                        .foregroundColor(.white)
                        .font(.custom("HeartsForAll", size: 60)) // TODO: this isn't working
                    Spacer()
                    HStack {
                        Text("Enter your name:")
                            .foregroundColor(.white)
                        TextField("", text: $love.name01)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.leading)
                    }
                    HStack {
                        Text("Enter their name:")
                            .foregroundColor(.white)
                        TextField("", text: $love.name02)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.leading)
                    }
                    NavigationLink {
                        LoveResultView(score: love.loveScore(name1: love.name01, name2: love.name02))
                    } label: {
                        Text("Calculate Score")
                            .font(.title2).bold()
                            .foregroundStyle(.white)
                    }
                    Spacer()
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
