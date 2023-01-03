//
//  SearchView.swift
//  AppleMusicAppHWSwiftUI
//
//  Created by Виталий Таран on 20.09.2022.
//

import SwiftUI

struct SearchView: View {

    @State private var search = ""
    @StateObject var radio = Music()
    @EnvironmentObject var currentMusic: CurrentMusic
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                Text("Radio Stantion:")
                    .font(.title2)
                    .padding(.bottom, 0)

                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(radio.stantions.filter({ $0.title.lowercased().contains(search.lowercased())
                        || search.isEmpty }), id: \.self) { cover in
                            NavigationLink {
                                SearchDetailView(selectedRadio: cover)
                                    .navigationTitle(cover.title)

                            } label: {
                                ZStack(alignment: .bottomLeading) {
                                    Image(cover.imageSqr)
                                        .resizable()
                                        .imageCoverStyle()

                                    Spacer()
                                    Text(cover.title)
                                        .foregroundColor(.white)
                                        .padding([.bottom, .leading], 15)
                                }
                            }
                        }
                }
                .padding(.top, 0)

                Text("Tracks:")
                    .font(.title2)
                    .padding(.bottom, 0)

                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(radio.albums.filter({ $0.title.lowercased().contains(search.lowercased())
                        || search.isEmpty }), id: \.self) { cover in
                            Button {
                                currentMusic.track = cover.title
                                currentMusic.coverImage = cover.imageSqr
                                currentMusic.album = cover.artist

                            } label: {
                                ZStack(alignment: .bottomLeading) {
                                    Image(cover.imageSqr)
                                        .resizable()
                                        .imageCoverStyle()
                                    
                                    Spacer()
                                    Text(cover.title)
                                        .foregroundColor(.white)
                                        .padding([.bottom, .leading], 15)
                                }
                            }
                        }
                }
                .padding(.top, 0)

            }
            .searchable(text: $search, prompt: "Search music")
            .padding()
            .padding(.bottom, Metric.playerHeight)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

