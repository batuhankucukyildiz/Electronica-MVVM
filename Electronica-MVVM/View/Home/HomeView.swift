//
//  ContentView.swift
//  Electronica-MVVM
//
//  Created by Batuhan Kucukyildiz on 17.08.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        VStack {
            
           
        }
        .padding()
        .navigationBarHidden(true) // Hide the navigation bar in ContentView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
