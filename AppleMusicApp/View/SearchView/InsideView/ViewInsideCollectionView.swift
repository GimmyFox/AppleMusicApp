//
//  ViewInsideCollectionView.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//

import SwiftUI

struct ViewInsideCollectionView: View {
    var body: some View {
            VStack{
                
                ScrollView(.vertical, showsIndicators: true) {
                    VStack {
                        Text("Рок на русском")
                            .font(.title)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, TextSettings.padding.rawValue)
                        Divider()
                        MainLazyHCollection()
                        Divider()
                        SmallLazyHCollection()
                    }
                }
            }
    }
}

struct ViewInsideCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ViewInsideCollectionView()
    }
}


extension ViewInsideCollectionView {
    
    enum TextSettings: CGFloat {
        case padding = 10
    }
}
