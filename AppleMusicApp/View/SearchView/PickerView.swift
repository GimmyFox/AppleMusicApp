//
//  PickerView.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 13.02.2022.
//

import SwiftUI

struct PickerView: View {
    
    @State var selection: String = ""
    let filterOptions: [String] = ["Apple Music","Ваша Медиатека"]
    
    var body: some View {
        Picker("picker", selection: $selection) {
            ForEach(filterOptions.indices) { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding(.bottom)
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
