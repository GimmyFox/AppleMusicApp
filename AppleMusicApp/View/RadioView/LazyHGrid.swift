//
//  LazyHGrid.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 29.01.2022.
//

import SwiftUI

let rows = [
    GridItem(.fixed(300))
]

struct LazyHStack: View {
    
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
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(compilation) { index in
                    VStack(alignment: .leading) {
                        Text(index.compilation)
                            .font(.system(size: 17))
                            .foregroundColor(.gray)
                        Text(index.compilationName)
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                        Text(index.compilationDescription)
                            .font(.system(size: 25))
                            .foregroundColor(.gray)
                        index.image
                            .resizable()
                            .frame(width: 400, height: 300)
                            .cornerRadius(5)
                    }
                }
            }
            .padding(.horizontal, 10)
            
        }
    }
}

struct LazyHStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStack()
    }
}
