//
//  SectionHeader.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 23.02.2022.
//

import UIKit

class SectionHeader: UICollectionReusableView {
    static let headerId = "headerId"
    
    private var leftHeader: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .left
        
        return label
    }()
    
    func configureHeader(header: String) {
        backgroundColor = .white
        leftHeader.text = header
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupLayout() {
        leftHeader.translatesAutoresizingMaskIntoConstraints = false
        
        leftHeader.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        leftHeader.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true

    }
    private func setupHierarchy() {
        addSubview(leftHeader)
    }
}

