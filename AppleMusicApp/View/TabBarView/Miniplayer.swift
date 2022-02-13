//
//  Miniplayer.swift
//  AppleMusicApp
//
//  Created by Maksim Guzeev on 27.01.2022.
//

import SwiftUI

struct Miniplayer: View {
    
    var animation: Namespace.ID
    @State var slider: Double = 0
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3
    
    var body: some View {
        VStack {
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? CapsuleSettings.expandedWidth.rawValue : 0, height: expand ? CapsuleSettings.expandedHeight.rawValue : 0)
                .opacity(expand ? CapsuleSettings.expandedOpacity.rawValue : 0)
                .padding(.top)
                .padding(.vertical, expand ? CapsuleSettings.expandedPadding.rawValue : 0)
            
            HStack(spacing: HStackSettings.hStackSpacing.rawValue) {
                
                if expand {
                    Spacer(minLength: 0)
                }
                
                Image("rick_astley")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(
                        width: expand ? height : ImageSettings.imageFrameHeightAndWidth.rawValue,
                        height: expand ? height : ImageSettings.imageFrameHeightAndWidth.rawValue
                    )
                    .cornerRadius(ImageSettings.imageCornerRadius.rawValue)
                
                VStack(alignment: .leading) {
                    if !expand {
                        Text("Rick Astley")
                            .font(.title2)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "Label", in: animation)
                        Text("Never Gonna Give You Up")
                            .foregroundColor(.gray)
                            .matchedGeometryEffect(id: "Description", in: animation)
                    }
                }
                
                Spacer(minLength: HStackSettings.hStackSpacer.rawValue)
                
                if !expand {
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

            }
            .padding([.horizontal, .bottom])
            
            VStack {
                HStack {
                    if expand {
                        VStack(alignment: .leading) {
                            Text("Rick Astley")
                                .font(.title2)
                                .foregroundColor(.primary)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Label", in: animation)
                            Text("Never Gonna Give You Up")
                                .foregroundColor(.gray)
                                .matchedGeometryEffect(id: "Description", in: animation)
                        }
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                }
                .padding()
                
                ProgressView("", value: ProgressBarValue.startValue.rawValue, total: ProgressBarValue.endValue.rawValue)
                    .progressViewStyle(.linear)
                    .padding([.leading, .trailing])
                HStack {
                    Text("0:00")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                    Text("4:59")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing)
                }
                .padding(.bottom, ProgressBarSettings.progressBarPadding.rawValue)
                HStack(spacing: 80) {
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width: BackwardButtonSettings.backwardButtonFrameWidth.rawValue, height: BackwardButtonSettings.backwardButtonFrameHeight.rawValue)
                            .foregroundColor(.black)
                    }
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: PlayButtonSettings.playButtonFrameWidthAndHeight.rawValue, height: PlayButtonSettings.playButtonFrameWidthAndHeight.rawValue)
                            .foregroundColor(.black)
                    }
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .frame(width: ForwardButtonSettings.forwardButtonFrameWidth.rawValue, height: ForwardButtonSettings.forwardButtonFrameHeight.rawValue)
                            .foregroundColor(.black)
                    }
                }
                .padding(.bottom, 80)
                HStack(spacing: 10) {
                    Image("minvolume")
                        .resizable()
                        .frame(width: VolumeImagesSettings.frameAndHeight.rawValue, height: VolumeImagesSettings.frameAndHeight.rawValue)
                        .padding(.leading)
                    Slider(value: $slider)
                        
                    Image("maxvolume")
                        .resizable()
                        .frame(width: VolumeImagesSettings.frameAndHeight.rawValue, height: VolumeImagesSettings.frameAndHeight.rawValue)
                        .padding(.trailing)
                }
                .padding(.bottom, 30)
                HStack(alignment: .center, spacing: 80) {
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .frame(width: SecondaryBottonsSettings.frameAndHeight.rawValue, height: SecondaryBottonsSettings.frameAndHeight.rawValue)
                            .font(Font.title.weight(.bold))
                            .foregroundColor(.gray)
                    }
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .frame(width: SecondaryBottonsSettings.frameAndHeight.rawValue, height: SecondaryBottonsSettings.frameAndHeight.rawValue)
                            .font(Font.title.weight(.bold))
                            .foregroundColor(.gray)
                    }
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: SecondaryBottonsSettings.frameAndHeight.rawValue, height: SecondaryBottonsSettings.frameAndHeight.rawValue)
                            .font(Font.title.weight(.bold))
                            .foregroundColor(.gray)
                    }
                }
                Spacer(minLength: 0)
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxHeight: expand ? .infinity : HStackSettings.hStackFrameHeight.rawValue)
        .background(
            VStack(spacing: BackgroundSettings.backgroundSpacing.rawValue) {
                BlurView()
                    .ignoresSafeArea()
                Divider()
            }
            .onTapGesture {
                withAnimation(.spring()) {expand.toggle()}
            })
        .offset(y: expand ? 0 : HStackSettings.hStackOffset.rawValue)
    }
}


extension Miniplayer {
    
    enum ImageSettings: CGFloat {
        case imageFrameHeightAndWidth = 58
        case imageCornerRadius = 10
    }
    
    enum HStackSettings: CGFloat {
        case hStackSpacing = 15
        case hStackSpacer = 0
        case hStackFrameHeight = 80
        case hStackOffset = -48
    }
    
    enum BackgroundSettings: CGFloat {
        case backgroundSpacing = 0
    }
    
    enum CapsuleSettings: CGFloat {
        case expandedWidth = 60
        case expandedHeight = 4
        case expandedOpacity = 1
        case expandedPadding = 30
        
    }
    
    enum ProgressBarValue: Double {
        case startValue = 0
        case endValue = 100
    }
    
    enum ProgressBarSettings: CGFloat {
        case progressBarPadding = 50
    }
    
    enum BackwardButtonSettings: CGFloat {
        case backwardButtonFrameWidth = 60
        case backwardButtonFrameHeight = 30
    }
    
    enum PlayButtonSettings: CGFloat {
        case playButtonFrameWidthAndHeight = 40
    }
    
    enum ForwardButtonSettings: CGFloat {
        case forwardButtonFrameWidth = 60
        case forwardButtonFrameHeight = 30
    }
    
    enum VolumeImagesSettings: CGFloat {
        case frameAndHeight = 15
    }
    
    enum SecondaryBottonsSettings: CGFloat {
        case frameAndHeight = 25
    }
}
