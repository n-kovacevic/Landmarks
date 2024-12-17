//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Nikola Kovacevic on 16.12.24..
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
