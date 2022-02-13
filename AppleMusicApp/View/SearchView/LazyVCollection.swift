//
//  LazyVCollection.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//

import SwiftUI

struct LazyVCollection: View {
    
    @State var model = collectionModel
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            VStack {
                Text("Поиск по категориям")
                    .bold()
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                LazyVGrid(columns: colums) {
                    ForEach(model) { index in
                        NavigationLink(destination: ViewInsideCollectionView()) {
                            ZStack(alignment: .bottomLeading) {
                                index.image
                                    .resizable()
                                    .frame(width: ImageSettings.frameWidth.rawValue, height: ImageSettings.frameHeight.rawValue)
                                    .cornerRadius(ImageSettings.cornerRadius.rawValue)
                                VStack {
                                    Text(index.text)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.leading)
                                        .padding([.bottom, .leading], 5)
                                }
                            }
                        }
                    }
                }
            }
            .padding([.leading, .trailing], 20)
        }
    }
}

struct LazyVCollection_Previews: PreviewProvider {
    static var previews: some View {
        LazyVCollection()
    }
}

extension LazyVCollection {
    
    enum ImageSettings: CGFloat {
        case frameWidth = 190
        case frameHeight = 130
        case cornerRadius = 15
    }
    
    enum TextSettings: CGFloat {
        case padding = 5
    }
}
