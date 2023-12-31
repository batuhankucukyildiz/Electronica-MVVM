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
        ElectronicaModel(id: 1, name: "Arduino", color: "Brown", image: "Arduino", about: "$12", owner: armElectronics),
        ElectronicaModel(id: 2, name: "Stm32F103", color: "Orange", image: "Stm", about: "$8", owner: stmElectronics),
        ElectronicaModel(id: 3, name: "Discovery", color: "Brown", image: "Stm", about: "$14", owner: stmElectronics),
        ElectronicaModel(id: 4, name: "ArduinoMega", color: "Brown", image: "ArduinoMega", about: "$13", owner: armElectronics)
    ]
}


