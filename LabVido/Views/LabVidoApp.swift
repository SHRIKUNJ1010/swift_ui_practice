//
//  LabVidoApp.swift
//  LabVido
//
//  Created by SSLLP-126 on 16/01/25.
//

import SwiftUI

@main
struct LabVidoApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandMarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandMarkSettingsView()
        }
        #endif
    }
}
