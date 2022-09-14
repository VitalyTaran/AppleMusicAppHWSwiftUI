//
//  RadioSingleStationView.swift
//  AppleMusicAppHWSwiftUI
//
//  Created by Виталий Таран on 14.09.2022.
//

import SwiftUI

struct RadioSingleStationView: View {
    
    let cover: RadioModel

    var body: some View {
        HStack {
            Image(cover.imageSqr)
                .resizable()
                .scaledToFit()
                .frame(width: 100,
                       height: 100)
                .cornerRadius(10)

            VStack(alignment: .leading) {
                Text(cover.title)
                    .font(.title2)
                Text("Apple Music station")
                    .foregroundColor(.secondary)
                    Divider()
                    .offset(y: 17)
            }
            Spacer()
        }
        .padding(.leading, 5)
    }
}

struct RadioSingleStationView_Previews: PreviewProvider {
    static var previews: some View {
        RadioSingleStationView(cover: RadioModel.covers[0]).previewLayout(.sizeThatFits)
    }
}
