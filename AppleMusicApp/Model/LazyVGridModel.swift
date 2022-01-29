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
