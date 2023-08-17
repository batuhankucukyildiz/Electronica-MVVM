//
//  SplashScreenView.swift
//  Electronica-MVVM
//
//  Created by Batuhan Kucukyildiz on 17.08.2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var size: CGFloat = 0.7
    @State private var opacity: Double = 0.5
    @State private var isAnimating = false // Animation flag
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    VStack {
                        Image("SplashScreen")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .font(.system(size: 80))
                            .foregroundColor(.red)
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1)) {
                            self.size = 0.9
                            self.opacity = 1.00
                        }
                    }
                }
                // NavigationLink to ContentView
                NavigationLink(
                    destination: MainView(),
                    isActive: $isAnimating,
                    label: EmptyView.init
                )
                .hidden() // Hide the NavigationLink view

            }
            .onAppear {
                // Start the animation
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    withAnimation{
                        self.isAnimating = true // Set the flag to true to trigger NavigationLink
                    }
                }
            }
            .onDisappear{
                DispatchQueue.description()
            }
            .navigationBarHidden(true) // Hide the navigation bar in SplashScreenView
            .background(EmptyView().onAppear {
            })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
