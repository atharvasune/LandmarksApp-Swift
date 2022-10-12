//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Atharva Sune on 12/10/22.
//

import SwiftUI

/**
 * Struct with @main annotation, conforming to the App protocol is the
 * entry point of the application
 */
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
