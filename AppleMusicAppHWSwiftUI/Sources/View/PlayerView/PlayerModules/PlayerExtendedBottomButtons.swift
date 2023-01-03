//
//  PlayerExtendedBottomButtons.swift
//  AppleMusicAppHWSwiftUI
//
//  Created by Виталий Таран on 20.09.2022.
//

import SwiftUI

struct PlayerExtendedBottomButtons: View {
    var body: some View {
        HStack(spacing: 50) {
            Button {
                print("message")
            } label: {
                PlayerButtonImage(systemName: "arrow.up.message", size: 20)
            }
            
            Button {
                print("airplay")
            } label: {
                PlayerButtonImage(systemName: "airplayaudio", size: 20)
            }
            
            Button {
                print("list")
            } label: {
                PlayerButtonImage(systemName: "text.badge.plus", size: 20)
            }
        }
    }
}


struct PlayerExpandedBottomButtons_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerExtendedBottomButtons()
            
        }
    }
}

