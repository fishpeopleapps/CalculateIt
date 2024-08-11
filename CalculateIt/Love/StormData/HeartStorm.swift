//
//  HeartStorm.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/11/24.
//

import SwiftUI

class HeartStorm {
    enum Contents: CaseIterable {
        case none, basicHeart, spottedHeart, outlineHeart, thinHeart
    }
    var drops = [HeartDrop]()
    var lastUpdate = Date.now
    var image: Image
    init(type: Contents, direction: Angle, strength: Int) {
        switch type {
        case .thinHeart:
            image = Image("ThinHeart")
        case .basicHeart:
            image = Image("BasicHeart")
        case .outlineHeart:
            image = Image("OutlineHeart")
        case .spottedHeart:
            image = Image("SpottedHeart")
        default:
            // is small Heart
            image = Image("Raindrop")
        }
        for _ in 0..<strength {
            drops.append(HeartDrop(type: type, direction: direction + .degrees(90)))
        }
    }
    func update(date: Date, size: CGSize) {
        let delta = date.timeIntervalSince1970 - lastUpdate.timeIntervalSince1970
        let divisor = size.height / size.width
        for drop in drops {
            let radians = drop.direction.radians
            drop.xPosition += cos(radians) * drop.speed * delta * divisor
            drop.yPosition += sin(radians) * drop.speed * delta
            if drop.xPosition < -0.2 {
                drop.xPosition += 1.4
            }
            if drop.yPosition > 1.2 {
                drop.xPosition = Double.random(in: -0.2...1.2)
                drop.yPosition -= 1.4
            }
        }
        lastUpdate = date
    }
}
