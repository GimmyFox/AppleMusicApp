//
//  SecondScreen.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct FilterView: View {
    
    @State private var categories: [SecondScreenModel] = [
    SecondScreenModel(image: Image(systemName: "music.note.list"), name: "Плейлисты"),
    SecondScreenModel(image: Image(systemName: "music.mic"), name: "Артисты"),
    SecondScreenModel(image: Image(systemName: "square.stack"), name: "Альбомы"),
    SecondScreenModel(image: Image(systemName: "music.note"), name: "Песни"),
    SecondScreenModel(image: Image(systemName: "tv"), name: "Телешоу и фильмы"),
    SecondScreenModel(image: Image(systemName: "music.note.tv"), name: "Видеоклипы"),
    SecondScreenModel(image: Image(systemName: "guitars"), name: "Жанры"),
    SecondScreenModel(image: Image(systemName: "person.2.crop.square.stack"), name: "Сборники"),
    SecondScreenModel(image: Image(systemName: "music.quarternote.3"), name: "Авторы"),
    SecondScreenModel(image: Image(systemName: "arrow.down.circle"), name: "Загружено"),
    SecondScreenModel(image: Image(systemName: "music.note.house"), name: "Домашняя коллекция")]
    
    @State private var selection = Set<String>()
    
    var body: some View {
        List(selection: $selection, content: {
            ForEach(categories) { category in
                HStack {
                    category.image
                        .foregroundColor(.red)
                    Text(category.name)
                }
            }
            .onMove { indexSet, index in
                self.categories.move(fromOffsets: indexSet, toOffset: index)
            }
        })
    }
    
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
