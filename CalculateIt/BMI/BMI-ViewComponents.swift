//
//  BMI-ViewComponents.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/4/23.


import SwiftUI

struct BMIViewComponents {
    
    var warning: some View {
        HStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundStyle(.yellow)
                .font(.largeTitle)
            Text("""
If you lift weights this calculator is
not a good representation of your health
"""
            )
            .font(.caption)
        }
    }
    var warning2: some View {
        HStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .foregroundStyle(.yellow)
                .font(.largeTitle)
            Text("""
Here's the second warning
"""
            )
            .font(.caption)
        }
    }
}
