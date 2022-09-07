//
//  ListView.swift
//  AppleMusicAppHWSwiftUI
//
//  Created by Виталий Таран on 07.09.2022.
//

import SwiftUI

struct ListView: View {

    @State var itemsList = ListModel.items
    @State private var multiSelection = Set<UUID>()
    @Environment(\.dismiss) var dismiss

    var body: some View {
        List(selection: $multiSelection) {
            ForEach(itemsList, id: \.self.id) { item in
                ListCell(item: item)
            }
            .onMove { itemsList.move(fromOffsets: $0, toOffset: $1) }
        }
        .environment(\.editMode, .constant(.active))
        .listStyle(.plain)
        .toolbar {
            NavigationLink {
            } label: {
                Button {
                    dismiss()
                } label: {
                    Text("Done")
                }
            }
            .navigationTitle("Library")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

