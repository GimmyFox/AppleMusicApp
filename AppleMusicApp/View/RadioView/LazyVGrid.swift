//
//  LazyVGrid.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 29.01.2022.
//

import SwiftUI

struct LazyVStack: View {
    
    let columns = [
        GridItem(.flexible(), alignment: .leading)
    ]
    
    @State private var model: [LazyVStackModel] = [
    LazyVStackModel(image: Image("chill"), label: "Музыка для расслабления", description: "Электронная медитация"),
    LazyVStackModel(image: Image("popular"), label: "Популярное", description: "То, что слушают прям сейчас"),
    LazyVStackModel(image: Image("electro"), label: "Классика электронной музыки", description: "Как рождался саунд будущего"),
    LazyVStackModel(image: Image("classic rock"), label: "Классика рока", description: "Гении гитарного звука"),
    LazyVStackModel(image: Image("classic"), label: "Классика", description: "Выдающиеся образцы жанра"),
    LazyVStackModel(image: Image("hip-hop"), label: "Хип-Хоп", description: "Идеальные биты и рифмы")
    ]
    var body: some View {
        ScrollView {
            VStack {
                LazyVGrid(columns: columns) {
                    Text("Станции")
                        .font(.system(size: 30))
                        .bold()
                        .padding()
                    ForEach(model) { index in
                        HStack(spacing: 10) {
                            index.image
                                .resizable()
                                .frame(width: 120, height: 120)
                                .cornerRadius(8)
                                .padding(.leading)
                            VStack(alignment: .leading) {
                                Text(index.label)
                                    .font(.system(size: 18))
                                Text(index.description)
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                            }
                        }
                        Divider()
                    }
                }
            }
        }
    }
}

struct LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack()
    }
}
