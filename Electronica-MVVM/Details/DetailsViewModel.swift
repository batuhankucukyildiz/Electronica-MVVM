//
//  DetailsViewModel.swift
//  Electronica-MVVM
//
//  Created by Batuhan Kucukyildiz on 17.08.2023.
//

import Foundation



class DetailViewModel : ObservableObject{
    let model : ElectronicaModel
    let story = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    init(model : ElectronicaModel) {
        self.model = model
    }
}
