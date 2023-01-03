//
//  RadioView.swift
//  AppleMusicAppHWSwiftUI
//
//  Created by Виталий Таран on 14.09.2022.
//

import SwiftUI

struct RadioView: View {
    
    @State private var radioCovers = RadioModel.covers
    let rows = [GridItem(.flexible())]
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(radioCovers) { cover in
                            RadioRectangleStantionView(cover: cover)
                        }
                    }
                }
                Divider()
                    .padding(.leading, 5)
                Text("Stantion")
                    .bold()
                    .font(.title)
                    .padding(.leading, 5)
                
                LazyVGrid(columns: columns) {
                    ForEach(radioCovers) { cover in
                        RadioSingleStationView(cover: cover)
                    }
                }
               Rectangle()
                    .fill(.clear)
                    .frame(maxWidth: .infinity, minHeight: 100)
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

