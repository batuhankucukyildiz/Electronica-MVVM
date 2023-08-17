//
//  ElectronicaData.swift
//  Electronica-MVVM
//
//  Created by Batuhan Kucukyildiz on 17.08.2023.
//

import Foundation




struct ElectronicaData {
    static let stmElectronics = ElectronicaOwnerModel(name: "Stm Techonology", info: "Very - Good", image:"Stm-Image")
    static let armElectronics = ElectronicaOwnerModel(name: "Arm Techonology", info: "Good", image:"Arm-Image")

    static let electronicaCard = [
        ElectronicaModel(id: 1, name: "Arduino", color: "Brown", image: "Arduino", about: "Very Simple", owner: armElectronics),
        ElectronicaModel(id: 1, name: "Stm32F103", color: "Orange", image: "Stm", about: "Very Simple", owner: stmElectronics),
        ElectronicaModel(id: 1, name: "Stm32F042", color: "Brown", image: "Stm", about: "Very Simple", owner: stmElectronics),
        ElectronicaModel(id: 1, name: "Arduino - Mega", color: "Brown", image: "Arduino", about: "Very Simple", owner: armElectronics)
    ]
}


