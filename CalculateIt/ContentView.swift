//
//  ContentView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/3/23.
//
// TODO: App Icon and Launch Screen
// TODO: ADD COMMENTS

import SwiftUI

struct ContentView: View {
    var calculators = [ "macro", "conversion", "tip"]
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [.teal, .mint, .black],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                VStack {
                    Text("Calculate It")
                        .font(.title)
                    NavigationLink {
                        BMIView()
                    } label: {
                        Label("BMI", systemImage: "scalemass.fill")
                            .modifier(HomeButton())
                    }
                    NavigationLink {
                        MathView()
                    } label: {
                        Label("Math", systemImage: "number")
                            .modifier(HomeButton())
                    }
                    NavigationLink {
                        LoveView()
                    } label: {
                        Label("LoveScore", systemImage: "heart.circle.fill")
                            .modifier(HomeButton())
                    }
                    NavigationLink {
                        LoveView()
                    } label: {
                        Label("LoveScore", systemImage: "heart.circle.fill")
                            .modifier(HomeButton())
                    }
                    NavigationLink {
                        LoveView()
                    } label: {
                        Label("LoveScore", systemImage: "heart.circle.fill")
                            .modifier(HomeButton())
                    }
                    NavigationLink {
                        LoveView()
                    } label: {
                        Label("LoveScore", systemImage: "heart.circle.fill")
                            .modifier(HomeButton())
                    }

 
                }
                .padding()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
