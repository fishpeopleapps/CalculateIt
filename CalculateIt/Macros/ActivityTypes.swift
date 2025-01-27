//
//  ActivityTypes.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/12/23.
//

import Foundation

enum ActivityType: CaseIterable {
    case none
    case light
    case medium
    case heavy
    case intense
    func stringValue() -> String {
        switch self {
        case .none:
            return "None"
        case .light:
            return "Light"
        case .medium:
            return "Medium"
        case .heavy:
            return "Heavy"
        case .intense:
                return "Intense"
        }
    }
}
