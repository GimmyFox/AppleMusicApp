//
//  TabBar.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct TabBar: View {
    @State var expand: Bool = false
    @Namespace var animation
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView {
                LibraryView()
                    .tabItem {
                        Text("Медиатека")
                        Image(systemName: "rectangle.stack.fill")
                    }
                RadioView()
                    .tabItem {
                        Text("Радио")
                        Image(systemName: "dot.radiowaves.left.and.right")
                    }
                SearchView()
                    .tabItem {
                        Text("Поиск")
                        Image(systemName: "magnifyingglass")
                    }
            }
            Miniplayer(animation: animation, expand: $expand)
        })
    }
}


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
