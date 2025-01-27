//
//  ContentView.swift
//  CalculateIt
//
//  Created by Kimberly Brewer on 8/3/23.
//
// TODO: App Icon and Launch Screen
// It's so pretty! Good job Kimmy!

import SwiftUI

struct ContentView: View {
    let components = HomeComponents()
    let navButtons = HomeNavigation()
    @State private var show1 = false
    @State private var show2 = false
    @State private var show3 = false
    @State private var show4 = false
    @State private var show5 = false
    @State private var show6 = false
    @State private var showingMenu = false
    var body: some View {
        NavigationView {
            ZStack {
                components.background

                GeometryReader { geo in
                    VStack {
                        // Holds the title and caption
                        VStack {
                            components.title
                            components.subTitle
                        }
                        .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.25)
                        // Holds the Menu Button in Place
                        VStack {
                            components.toggleMenuButton
                                .onTapGesture {
                                    showMenu()
                                }
                        }
                        .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.15)
                        // Holds the navigational Buttons in individual stacks so they can house
                        // a frame modifier
                        VStack {
                            VStack {
                                if show1 {
                                    navButtons.bmi
                                }
                            }
                            .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.07)
                            VStack {
                                if show2 {
                                    navButtons.calculator
                                }
                            }
                            .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.07)
                            VStack {
                                if show3 {
                                    navButtons.loveScore
                                }
                            }
                            .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.07)
                            VStack {
                                if show4 {
                                    navButtons.conversion
                                }
                            }
                            .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.07)
                            VStack {
                                if show5 {
                                    navButtons.tdeeAndMacros
                                }
                            }
                            .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.07)
                            VStack {
                                if show6 {
                                    navButtons.serverTip
                                }
                            }
                            .frame(width: geo.size.width * 1.0, height: geo.size.height * 0.07)
                        }
                    }
                }
                }
            }
        .tint(.black)
        }
    // I wonder if there is a better way to do this?
    // I show each each VStack sequentially after 0.1
        func showMenu() {
            showingMenu.toggle()
            if showingMenu {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation {
                        show1.toggle()
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation {
                        show2.toggle()
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    withAnimation {
                        show3.toggle()
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                    withAnimation {
                        show4.toggle()
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation {
                        show5.toggle()
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                    withAnimation {
                        show6.toggle()
                    }
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
