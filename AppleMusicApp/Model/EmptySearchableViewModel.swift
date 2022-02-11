//
//  EmptySearchableViewModel.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 11.02.2022.
//

import SwiftUI

struct EmptySearchableViewModel: Identifiable {
    let id: String = UUID().uuidString
    let image: Image
    let songName: String
    let performer: String
}

let emptySearchableViewModel: [EmptySearchableViewModel] = [
EmptySearchableViewModel(image: Image("acdc"), songName: "Thunderstrike", performer: "AC/DC"),
EmptySearchableViewModel(image: Image("drake"), songName: "God's Plan", performer: "Drake"),
EmptySearchableViewModel(image: Image("arcticMonkeys"), songName: "505", performer: "Arctic Monkeys"),
EmptySearchableViewModel(image: Image("aliciaKeys"), songName: "Girl On Fire", performer: "Alicia Keys"),
EmptySearchableViewModel(image: Image("zemfira"), songName: "П.М.М.Л", performer: "Земфира"),
EmptySearchableViewModel(image: Image("rick_astley"), songName: "Never Gonna Give You Up", performer: "Rick Astley"),
EmptySearchableViewModel(image: Image("theweekd"), songName: "False Alarm", performer: "The weeknd"),
EmptySearchableViewModel(image: Image("miyagi"), songName: "Marlboro", performer: "Miyagi"),
EmptySearchableViewModel(image: Image("jcole"), songName: "ATM", performer: "J.Cole"),
EmptySearchableViewModel(image: Image("joji"), songName: "YEAH RIGHT", performer: "Joji")
]

