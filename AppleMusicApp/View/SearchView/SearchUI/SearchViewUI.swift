//
//  SearchViewUI.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 23.02.2022.
//

import SwiftUI
import UIKit

struct SearchViewUI: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let searchViewController = SearchUIViewController()
        return searchViewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
