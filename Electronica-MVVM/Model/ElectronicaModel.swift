//
//  ElectronicaModel.swift
//  Electronica-MVVM
//
//  Created by Batuhan Kucukyildiz on 17.08.2023.
//

import Foundation





// MARK: Identifiable protocol was used for auto-id
struct ElectronicaModel : Identifiable {
    var id : Int
    var name : String
    var color : String
    var image : String
    var about : String
    var owner : ElectronicaOwnerModel
}
