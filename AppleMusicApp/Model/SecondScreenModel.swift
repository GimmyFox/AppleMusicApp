//
//  SecondScreenModel.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct SecondScreenModel: Identifiable {
    let id: String = UUID().uuidString
    let image: Image?
    let name: String
}
