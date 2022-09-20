//
//  PlayerExtendedControlModul.swift
//  AppleMusicAppHWSwiftUI
//
//  Created by Виталий Таран on 20.09.2022.
//

import SwiftUI

struct PlayerExtendedControlModul: View {

    @Binding var isPlaying: Bool

    var body: some View {
        HStack {
            Button {
                print("gobackward.15")
            } label: {
                PlayerButtonImage(systemName: "gobackward.15", size: 35)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Button {
                print("play")
                isPlaying.toggle()
            } label: {
                PlayerButtonImage(systemName: isPlaying ? "pause.fill" : "play.fill", size: 35)
            }
            Spacer()
            Button {
                print("goforward.15")
            } label: {
                PlayerButtonImage(systemName: "goforward.15", size: 35)
            }
        }
        .padding([.leading, .trailing], 40)
    }
}
