//
//  LazyVGridModel.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 29.01.2022.
//

import SwiftUI

struct LazyVStackModel: Identifiable {
    let id: String = UUID().uuidString
    let image: Image
    let label: String
    let description: String
}

let smallVCollectionModel: [LazyVStackModel] = [
LazyVStackModel(image: Image("zemfira"), label: "Земфира", description: "Album"),
LazyVStackModel(image: Image("jcole"), label: "J. Cole", description: "Album"),
LazyVStackModel(image: Image("miyagi"), label: "Miyagi", description: "Album"),
LazyVStackModel(image: Image("aliciaKeys"), label: "Alicia Keys", description: "Album"),
LazyVStackModel(image: Image("joji"), label: "Joji", description: "Album"),
LazyVStackModel(image: Image("arcticMonkeys"), label: "Arctic Monkeys", description: "Album"),
LazyVStackModel(image: Image("drake"), label: "Drake", description: "Album"),
]
