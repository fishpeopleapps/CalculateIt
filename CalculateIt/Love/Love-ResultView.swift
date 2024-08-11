//
//  Love-ResultView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/7/23.
//
// TODO: Add Storm data of hearts
import SwiftUI

struct LoveResultView: View {
    @State var score: Int
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red, .pink], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            StormView(
                type: HeartStorm.Contents.basicHeart,
                direction: Angle.zero,
                strength: 20
            )
            StormView(
                type: HeartStorm.Contents.outlineHeart,
                direction: Angle.degrees(.random(in: 0...30)),
                strength: 20
            )
            StormView(
                type: HeartStorm.Contents.thinHeart,
                direction: Angle.zero,
                strength: 40
            )
            StormView(
                type: HeartStorm.Contents.spottedHeart,
                direction: Angle.degrees(.random(in: 0...30)),
                strength: 10
            )
                ZStack {
                    Color.white.opacity(0.8)
                        .clipShape(Circle())
                        .padding()
                    VStack {
                    Text("\n\n\(loveScoreResult(score: score))")
                        .monospaced()
                        .padding(.horizontal, 30)
                        .font(.title3)
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.center)
                        Image(systemName: score > 15 ? "heart.fill" : "heart.slash.fill")
                        .padding(.top)
                        .font(.largeTitle)
                        .foregroundStyle(.red).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                }

            }
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
        LoveResultView(score: 15)
    }
}
