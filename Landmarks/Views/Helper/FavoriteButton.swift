//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Nikola Kovacevic on 17.12.24..
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview("Set") {
    FavoriteButton(isSet: .constant(true) )
}
#Preview("Unset"){
    FavoriteButton(isSet: .constant(false) )
}
