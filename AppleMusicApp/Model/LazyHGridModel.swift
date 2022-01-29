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
