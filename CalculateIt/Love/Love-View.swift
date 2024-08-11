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
                    Spacer()
                    Text("Love")
                        .modifier(HeartText(size: 80))
                    Text("Calculator")
                        .modifier(HeartText(size: 70))
                    HStack {
                        Text("Your name:")
                            .inputStyle()
                        TextField("", text: $love.name01)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.leading)
                        .autocorrectionDisabled()
                    }
                    HStack {
                        Text("Their name:")
                            .inputStyle()
                        TextField("", text: $love.name02)
                        .textFieldStyle(.roundedBorder)
                        .multilineTextAlignment(.leading)
                        .autocorrectionDisabled()
                    }
                    NavigationLink {
                        LoveResultView(score: love.loveScore(name1: love.name01, name2: love.name02))
                    } label: {
                        Text("calculate score")
                            .padding(10)
                            .background(.white).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                            .padding(20)
                            .foregroundStyle(.black)
                            .font(.custom("HeartsForAll", size: 40))
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
