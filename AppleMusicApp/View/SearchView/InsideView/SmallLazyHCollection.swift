//
//  SmallLazyHCollection.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//


import SwiftUI

struct SmallLazyHCollection: View {
    
    @State var model = smallVCollectionModel
    
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(model) { index in
                            VStack {
                                index.image
                                    .resizable()
                                    .frame(width: ImageSettings.frameWidthAndHeight.rawValue, height: ImageSettings.frameWidthAndHeight.rawValue)
                                .cornerRadius(ImageSettings.cornerRadius.rawValue)
                                Text(index.label)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(index.description)
                                    .font(.system(size: TextFontSettings.textSize.rawValue))
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 260)
                    .padding(.leading, 10)
                }
            } header: {
                HStack {
                    Text("Избранные плейлисты")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                    Button(action: {}) {
                        Text("См. все")
                            .foregroundColor(.red)
                            .padding(.trailing)
                    }
                }
            }
        }
    }
}

struct SmallLazyHCollection_Previews: PreviewProvider {
    static var previews: some View {
        SmallLazyHCollection()
    }
}

extension SmallLazyHCollection {
    
    enum ImageSettings: CGFloat {
        case frameWidthAndHeight = 195
        case cornerRadius = 10
    }
    
    enum TextFontSettings: CGFloat {
        case textSize = 14
    }
}
