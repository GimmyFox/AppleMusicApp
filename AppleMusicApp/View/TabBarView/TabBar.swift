//
//  TabBar.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView {
                LibraryView()
                    .tabItem {
                        Text("Медиатека")
                        Image(systemName: "rectangle.stack.fill")
                    }
                Text("Radio")
                    .tabItem {
                        Text("Радио")
                        Image(systemName: "dot.radiowaves.left.and.right")
                    }
                Text("Search")
                    .tabItem {
                        Text("Поиск")
                        Image(systemName: "magnifyingglass")
                    }
            }
            Miniplayer()
        })
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
