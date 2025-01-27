//
//  RatingView.swift
//  Bookworm
//
//  Created by Kimberly Brewer on 8/8/23.
//

import SwiftUI

struct RatingView: View {
    @ObservedObject var tipVM: TipViewModel
    // THIS IS HOW YOU CONNECT VARIABLES FROM OTHER VIEWS!
    // @Binding var rating: Int
    // More
    var label = ""
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow
    // End
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > tipVM.rating ? offColor : onColor)
                    .onTapGesture {
                        tipVM.rating = number
                    }
            }
        }
    }
    /// Returns an image based on the user rating
    /// - Parameter num: User rating
    /// - Returns: Rating Image
    func image(for num: Int) -> Image {
        if num > tipVM.rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}
