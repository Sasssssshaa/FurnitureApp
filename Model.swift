//
//  Model.swift
//  Furniture
//
//  Created by Admin on 21.06.25.
//

import Foundation

struct FurnitureItem: Identifiable {
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let imageName: String
}
    
struct FurnitureData {
    static let chairs: [FurnitureItem] = [
        FurnitureItem(title: "Gray Chair", price: "₴4500", imageName: "GrayChair"),
        FurnitureItem(title: "White Chair", price: "₴6300", imageName: "WhiteChair"),
        FurnitureItem(title: "Blue Chair", price: "₴9700", imageName: "BlueChair")
    ]
    
    static let sofas: [FurnitureItem] = [
        FurnitureItem(title: "Gray Sofas", price: "₴12000", imageName: "GraySofas"),
        FurnitureItem(title: "Green Sofa", price: "₴13900", imageName: "GreenSofa"),
        FurnitureItem(title: "White Sofa", price: "₴17000", imageName: "WhiteSofa")
    ]
}
