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
        ScrollView(.vertical, showsIndicators: false) {
            
            ZStack{
                VStack {
                    ForEach(viewModel.electronicaList) {model in
                        ListView(name: model.name, image: model.image, about: model.about)
                    }
                }
                .padding()
                .navigationBarHidden(true) // Hide the navigation bar in ContentView
            }
        }
    }
 }


struct ListView: View {
    var name : String , image : String , about : String
    var body: some View {
        ZStack{
            Color.mint
            VStack(alignment: .leading) {
                HStack {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                    VStack(alignment: .leading) {
                        Text(name)
                            .padding(.leading, 20)
                            .padding(.bottom, 20)
                            .foregroundColor(.white)
                        Text(about)
                            .padding(.leading, 20)
                            .foregroundColor(.white)
                    }
                    
                    
                }
                .padding()

            }
        }
        .cornerRadius(10)
        .padding(.top, 20)
        .padding(.horizontal , 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
