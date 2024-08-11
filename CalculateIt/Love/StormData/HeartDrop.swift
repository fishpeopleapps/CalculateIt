//
//  HeartDrop.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/11/24.
//

import SwiftUI

class HeartDrop {
        var xPosition: Double
        var yPosition: Double
        var xScale: Double
        var yScale: Double
        var speed: Double
        var opacity: Double
        var direction: Angle
        var rotation: Angle
        var rotationSpeed: Angle
        init(type: HeartStorm.Contents, direction: Angle) {
            xPosition = Double.random(in: -0.2...1.2)
            yPosition = Double.random(in: -0.2...1.2)
            switch type {
            case .basicHeart:
                xScale = Double.random(in: 0.05...0.2)
                yScale = xScale
                speed = Double.random(in: 0.15...0.3)
                opacity = Double.random(in: 0.2...1)
                self.direction = direction
                rotation = Angle.zero
                rotationSpeed = Angle.zero
            case .spottedHeart:
                xScale = Double.random(in: 0.05...0.2)
                yScale = xScale
                speed = Double.random(in: 0.15...0.25)
                opacity = Double.random(in: 0.1...0.8)
                self.direction = direction + .degrees(.random(in: -25...35))
                rotation = Angle.degrees(Double.random(in: 0...180))
                rotationSpeed = Angle.zero
            case .outlineHeart:
                xScale = Double.random(in: 0.05...0.2)
                yScale = xScale
                 speed = Double.random(in: 0.2...0.6)
                 opacity = Double.random(in: 0.2...1)
                self.direction = direction + .degrees(.random(in: -15...15))
                 rotation = Angle.degrees(Double.random(in: 0...360))
                 rotationSpeed = Angle.degrees(Double.random(in: -360...360))
            case .thinHeart:
                xScale = Double.random(in: 0.05...0.2)
                yScale = xScale
                 speed = Double.random(in: 0.2...0.6)
                 opacity = Double.random(in: 0.2...1)
                self.direction = direction + .degrees(.random(in: -15...15))
                 rotation = Angle.degrees(Double.random(in: 0...360))
                 rotationSpeed = Angle.degrees(Double.random(in: -360...360))
            default:
                // is smallHeart
                xScale = Double.random(in: 0.3...0.8)
                yScale = xScale
                speed = Double.random(in: 0.2...0.6)
                opacity = Double.random(in: 0.1...0.7)
                self.direction = direction
                rotation = Angle.zero
                rotationSpeed = Angle.zero
            }
        }
    }
