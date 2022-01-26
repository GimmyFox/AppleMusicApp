//
//  LibraryView.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var isEmptyLibrary = true
    
    var body: some View {
        NavigationView {
            ZStack {
                if isEmptyLibrary {
                    EmptyView()
                } else {
                    FilterView()
                }
            }
            .navigationTitle("Медиатека")
            .environment(\.editMode, .constant(
                isEmptyLibrary ? EditMode.inactive : EditMode.active))
            .accentColor(.red)
        
            .navigationBarItems(trailing: Button(action: {
                isEmptyLibrary.toggle()
            }, label: {
                if isEmptyLibrary {
                    Text("Править")
                        .foregroundColor(.red)
                } else {
                    Text("Готово")
                        .foregroundColor(.red)
                }
            }))
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
