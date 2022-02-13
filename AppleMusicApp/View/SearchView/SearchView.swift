//
//  SearchView.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//

import SwiftUI

struct SearchView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVCollection()
                }
                .navigationTitle("Поиск")
            }

            .searchable(text: $search, placement: .navigationBarDrawer(displayMode: .always), prompt: "Артисты, песни, тексты и др.") {
                VStack {
                    PickerView()
                    HStack {
                        Text("Недавние поиски")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Button {
                            
                        } label: {
                            Text("Очистить")
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .foregroundColor(.red)
                        }

                    }
                    Divider()
                    if search.isEmpty {
                        EmptySearchableView()
                    } else {
                        // тут должен находится поиск, но он будет в следующей серии :)
                    }
                }
            }
        }
        
        .padding(.bottom, SearchViewSettings.padding.rawValue)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

extension SearchView {
    enum SearchViewSettings: CGFloat {
        case padding = 80
    }
}
