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
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview(landmarks[0].name) {
    LandmarkRow(landmark: landmarks[0])
}

#Preview(landmarks[1].name){
    LandmarkRow(landmark: landmarks[1])
}

#Preview("List") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
