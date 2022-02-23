//
//  CollectionViewModel.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 23.02.2022.
//

import UIKit

struct CollectionViewModel {
    var image: UIImage?
    var description: String
}


extension CollectionViewModel {
    
    static let data: [CollectionViewModel] = [
        
        CollectionViewModel(image: UIImage(named: "zemfira"), description: "Рок на русском"),
        CollectionViewModel(image: UIImage(named: "drake"), description: "Рэп"),
        CollectionViewModel(image: UIImage(named: "joji"), description: "Dead inside"),
        CollectionViewModel(image: UIImage(named: "miyagi"), description: "Хип-хоп на русском"),
        CollectionViewModel(image: UIImage(named: "acdc"), description: "Рок на все времена"),
        CollectionViewModel(image: UIImage(named: "arcticMonkeys"), description: "Альтернативный рок"),
        CollectionViewModel(image: UIImage(named: "aliciaKeys"), description: "Просто попса"),
        CollectionViewModel(image: UIImage(named: "jcole"), description: "Пространственное аудио"),

    ]
}

