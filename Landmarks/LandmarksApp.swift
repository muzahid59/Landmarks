//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Muzahidul on 16/1/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
