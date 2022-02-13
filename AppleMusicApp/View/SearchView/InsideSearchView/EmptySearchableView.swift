//
//  EmptySearchableView.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//

import SwiftUI

let columns = [
    GridItem(.flexible())
]

struct EmptySearchableView: View {
    let model = emptySearchableViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading) {
            ForEach(model) { index in
                HStack {
                    index.image
                        .resizable()
                        .frame(width: ImageSettings.frameWidthAndHeight.rawValue, height: ImageSettings.frameWidthAndHeight.rawValue)
                    .cornerRadius(ImageSettings.cornerRadius.rawValue)
                    VStack(alignment: .leading, spacing: 0.0) {
                        Text(index.songName)

                        HStack {
                            Text("Песня")
                                .foregroundColor(.gray)
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 3,height: 3)
                                .foregroundColor(.gray)
                            Text(index.performer)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Divider()
            }
            }
        }
    }
}

struct EmptySearchableView_Previews: PreviewProvider {
    static var previews: some View {
        EmptySearchableView()
    }
}


extension EmptySearchableView {
    enum ImageSettings: CGFloat {
        case frameWidthAndHeight = 55
        case cornerRadius = 5
    }
}
