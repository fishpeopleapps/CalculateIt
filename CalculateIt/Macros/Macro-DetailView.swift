//
//  MacroDetailView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/12/23.
//

import SwiftUI

struct MacroDetailView: View {
    @ObservedObject var macros: MacroViewModel
    var body: some View {
        VStack(spacing: 20) {
            Text("\(macros.userTDEE)")
            Text("Your fat grams should be \(macros.fat), which is \(macros.fat * 9) calories")
            Text("Your carbs grams should be \(macros.carbohydrates), which is \(macros.carbohydrates * 4) calories")
            Text("Your protein grams should be \(macros.protein), which is \(macros.protein * 4)")
            Text("Total calories:")
            Text("\(totalCalories(fat: 35, carbs: 174, protein: 63))")
        }
        
    }
    func totalCalories(fat: Int, carbs: Int, protein: Int) -> Int {
        (fat * 9) + (carbs * 4) + (protein * 4)
    }
}

struct MacroDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MacroDetailView(macros: MacroViewModel())
    }
}
