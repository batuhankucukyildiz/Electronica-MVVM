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
            Text("Electronica Card") // Sayfanın en üstünde görünecek başlık
                .font(.body)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 16) { // ListView'ler arasında boşluk bırakmak için VStack kullanılıyor
                    ForEach(viewModel.electronicaList) { model in
                        ListView(name: model.name, image: model.image, about: model.about)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarHidden(true)
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
                        .frame(width: 120, height: 120)
                    VStack(alignment: .leading) {
                        Text(name)
                            .padding(.leading, 20)
                            .padding(.bottom, 20)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            
                        Text(about)
                            .padding(.leading, 20)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
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
