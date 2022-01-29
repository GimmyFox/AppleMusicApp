//
//  Miniplayer.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct Miniplayer: View {
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image("rick_astley")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 58, height: 58)
                    .cornerRadius(15)
                VStack(alignment: .leading) {
                    Text("Rick Astley")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Never Gonna Give You Up")
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal)
            .frame(height: 80)
            .background(
                VStack(spacing: 0) {
                    BlurView()
                    Divider()
                })
            .offset(y: -48)
        }
    }
}

struct Miniplayer_Previews: PreviewProvider {
    static var previews: some View {
        Miniplayer()
    }
}
