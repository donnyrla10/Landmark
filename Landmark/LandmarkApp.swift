//
//  LandmarkApp.swift
//  Landmark
//
//  Created by 김영선 on 2022/03/28.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
