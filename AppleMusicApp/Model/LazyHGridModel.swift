//
//  LazyHGridModel.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 29.01.2022.
//

import SwiftUI

struct LazyHStackModel: Identifiable {
    let id: String = UUID().uuidString
    let compilation: String = "Избранная радиостанция"
    let compilationName: String
    let compilationDescription: String = "Станция Apple Music"
    let image: Image
}

let bigHCollectionModel: [LazyHStackModel] = [
    LazyHStackModel(compilationName: "Хиты на русском", image: Image("IMG_1")),
    LazyHStackModel(compilationName: "Чилаут", image: Image("IMG_2")),
    LazyHStackModel(compilationName: "Поп-музыка", image: Image("IMG_3")),
    LazyHStackModel(compilationName: "Танцевальная музыка", image: Image("IMG_4")),
    LazyHStackModel(compilationName: "Хип-хоп на русском", image: Image("IMG_5")),
    LazyHStackModel(compilationName: "Хиты", image: Image("IMG_6")),
    LazyHStackModel(compilationName: "Хип-хоп", image: Image("IMG_7"))
]
