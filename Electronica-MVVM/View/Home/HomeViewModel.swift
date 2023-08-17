//
//  HomeViewModel.swift
//  Electronica-MVVM
//
//  Created by Batuhan Kucukyildiz on 17.08.2023.
//

import Foundation

class HomeViewModel : ObservableObject {
    @Published var electronicaList = [ElectronicaData]()
}
