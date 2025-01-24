//
//  ContentView.swift
//  WatchLabVido Watch App
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandMarkListView()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
