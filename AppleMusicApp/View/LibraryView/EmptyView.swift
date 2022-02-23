//
//  EmptyView.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("Ищете свою музыку?")
                .font(.title)
                .bold()
            
            Text("Здесь появится купленная Вами в iTunes Store музыка")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .font(.system(size: 20))
                .lineLimit(2)
                .padding(.horizontal, 30)
                
            
        }
    }
}

struct EmptyView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
