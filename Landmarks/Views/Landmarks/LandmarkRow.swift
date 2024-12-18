//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Nikola Kovacevic on 17.12.24..
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview(ModelData().landmarks[0].name) {
    LandmarkRow(landmark: ModelData().landmarks[0])
}

#Preview(ModelData().landmarks[1].name){
    LandmarkRow(landmark: ModelData().landmarks[1])
}

#Preview("List") {
    let landmarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
