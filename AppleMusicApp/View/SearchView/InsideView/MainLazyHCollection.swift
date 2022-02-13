//
//  MainLazyHCollection.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//

import SwiftUI

struct MainLazyHCollection: View {
    
    let rows = [
        GridItem(.fixed(RowsSize.size.rawValue))
    ]
    @State private var compilation: [LazyHStackModel] = [
    LazyHStackModel(compilationName: "Хиты на русском", image: Image("IMG_1")),
    LazyHStackModel(compilationName: "Чилаут", image: Image("IMG_2")),
    LazyHStackModel(compilationName: "Поп-музыка", image: Image("IMG_3")),
    LazyHStackModel(compilationName: "Танцевальная музыка", image: Image("IMG_4")),
    LazyHStackModel(compilationName: "Хип-хоп на русском", image: Image("IMG_5")),
    LazyHStackModel(compilationName: "Хиты", image: Image("IMG_6")),
    LazyHStackModel(compilationName: "Хип-хоп", image: Image("IMG_7"))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: LazyHGridSettings.lazyHGridSpacingAndPadding.rawValue) {
                ForEach(compilation) { index in
                    VStack(alignment: .leading) {
                        Text(index.compilation)
                            .font(.system(size: TextFontSize.compilationFontSize.rawValue))
                            .foregroundColor(.gray)
                        Text(index.compilationName)
                            .font(.system(size: TextFontSize.compilationNameAndDescriptionFontSize.rawValue))
                            .fontWeight(.semibold)
                        Text(index.compilationDescription)
                            .font(.system(size: TextFontSize.compilationNameAndDescriptionFontSize.rawValue))
                            .foregroundColor(.gray)
                        index.image
                            .resizable()
                            .frame(width: ImageSize.imageFrameWidth.rawValue, height: ImageSize.imageFrameHeight.rawValue)
                            .cornerRadius(ImageSize.imageCornerRadius.rawValue)
                    }
                }
            }
            .padding(.horizontal, LazyHGridSettings.lazyHGridSpacingAndPadding.rawValue)
            
        }
    }
}

struct MainLazyHCollection_Previews: PreviewProvider {
    static var previews: some View {
        MainLazyHCollection()
    }
}

extension MainLazyHCollection {
    
    enum RowsSize: CGFloat {
        case size = 300
    }
    
    enum LazyHGridSettings: CGFloat {
        case lazyHGridSpacingAndPadding = 10
    }
    
    enum TextFontSize: CGFloat {
        case compilationFontSize = 17
        case compilationNameAndDescriptionFontSize = 25
    }
    
    enum ImageSize: CGFloat {
        case imageFrameWidth = 400
        case imageFrameHeight = 300
        case imageCornerRadius = 5
    }
}
