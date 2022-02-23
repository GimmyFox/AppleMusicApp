//
//  CollectionViewCell.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 23.02.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let cellId = "cell"
    
    var data: CollectionViewModel? {
        didSet {
            guard let data = data else {
                return
            }
            imageCell.image = data.image
            imageLabel.text = data.description
        }
    }
    
    var labelView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var imageCell: UIImageView = {
        
        let image = UIImageView()
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 15
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    var imageLabel: UILabel = {
        
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .white
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupHierarchy()
        setupLayout()
    }
    
    
    func setupHierarchy() {
        contentView.clipsToBounds = true
        contentView.addSubview(imageCell)
        contentView.addSubview(imageLabel)
        contentView.addSubview(labelView)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            imageCell.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageCell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            imageCell.heightAnchor.constraint(equalToConstant: 130),
            imageCell.widthAnchor.constraint(equalToConstant: 190),
        
            imageLabel.bottomAnchor.constraint(equalTo: labelView.bottomAnchor, constant: -5),
            imageLabel.leadingAnchor.constraint(equalTo: labelView.leadingAnchor, constant: 10),
            imageLabel.trailingAnchor.constraint(equalTo: labelView.trailingAnchor, constant: -10),
            
            labelView.leadingAnchor.constraint(equalTo: imageCell.leadingAnchor),
            labelView.trailingAnchor.constraint(equalTo: imageCell.trailingAnchor),
            labelView.bottomAnchor.constraint(equalTo: imageCell.bottomAnchor),
            labelView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}

