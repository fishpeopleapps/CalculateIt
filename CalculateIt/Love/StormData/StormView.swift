//
//  StormView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/11/24.
//

import SwiftUI

struct StormView: View {
    let storm: HeartStorm
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
               storm.update(date: timeline.date, size: size)
                for drop in storm.drops {
                    // render a single drop
                    var contextCopy = context
                    let xPos = drop.xPosition * size.width
                    let yPos = drop.yPosition * size.height
                    contextCopy.opacity = drop.opacity
                    contextCopy.translateBy(x: xPos, y: yPos)
                    contextCopy.rotate(by: drop.direction + drop.rotation)
                    contextCopy.scaleBy(x: drop.xScale, y: drop.yScale)
                    contextCopy.draw(storm.image, at: .zero)
                }
            }
       }
        .ignoresSafeArea()
    }
    init(type: HeartStorm.Contents, direction: Angle, strength: Int) {
        storm = HeartStorm(type: type, direction: direction, strength: strength)
    }
}
