//
//  SearchCollectionModel.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 11.02.2022.
//


import SwiftUI


struct SearchCollectionModel: Identifiable {
    var id: String = UUID().uuidString
    var image: Image
    var text: String
}

let collectionModel: [SearchCollectionModel] = [
SearchCollectionModel(image: Image("zemfira"), text: "Рок на русском"),
SearchCollectionModel(image: Image("jcole"), text: "Пространственное аудио"),
SearchCollectionModel(image: Image("miyagi"), text: "Хип-зоп на русском"),
SearchCollectionModel(image: Image("drake"), text: "Рок на русском"),
SearchCollectionModel(image: Image("aliciaKeys"), text: "Пространственное аудио"),
SearchCollectionModel(image: Image("acdc"), text: "Хип-зоп на русском"),
SearchCollectionModel(image: Image("arcticMonkeys"), text: "Рок на русском"),
SearchCollectionModel(image: Image("joji"), text: "Пространственное аудио")
]

