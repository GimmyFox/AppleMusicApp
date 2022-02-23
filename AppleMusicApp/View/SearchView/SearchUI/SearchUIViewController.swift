//
//  SearchUIViewController.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 23.02.2022.
//

import UIKit

class SearchUIViewController: UIViewController {

    var model = [CollectionViewModel]()
    
    private lazy var collectionView: UICollectionView = {
        
        let viewLayout = searchViewLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.cellId)
        collectionView.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.headerId)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    private func setupView() {
        
    }
    
    private func setupLayout() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func searchViewLayout() -> UICollectionViewLayout {
        
        let spacing: CGFloat = 10
        
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .absolute(190),
            heightDimension: .absolute(130)
        )
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)

        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .absolute(130)
        )
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        
        group.interItemSpacing = NSCollectionLayoutSpacing.fixed(-30)
        
        let section = NSCollectionLayoutSection(group: group)
        let header = createHeader()

        section.interGroupSpacing = spacing
        section.boundarySupplementaryItems = [header]
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        
        
        return layout
    }
    
    func createHeader() -> NSCollectionLayoutBoundarySupplementaryItem {
        let sectioHeaderSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .absolute(30)
        )
        
        let header = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: sectioHeaderSize,
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top)
        return header
    }
    
    internal func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.headerId, for: indexPath) as! SectionHeader
        header.configureHeader(header: "Поиск по категориям")
        return header
    }
    
}

extension SearchUIViewController: UICollectionViewDelegate {
    
}

extension SearchUIViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = CollectionViewModel.data.count
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.cellId, for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.data = CollectionViewModel.data[indexPath.item]
        return cell
    }
    
    
}


