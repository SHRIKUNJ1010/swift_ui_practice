//
//  NotificationView.swift
//  WatchLabVido Watch App
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        ScrollView {
            VStack {
                if let landmark {
                    CircleImage(
                        image: landmark.image.resizable(),
                        width:100,
                        height: 100
                    )
                    .scaledToFit()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                }
                
                Text(title ?? "Unknown Landmark")
                    .font(.headline)
                Divider()
                Text(message ?? "You are within 5 miles of one of your favorite landmarks")
                    .font(.caption)
            }
        }
    }
}

#Preview {
    NotificationView(
        title: "Turtle Rock",
        message: "You are within 5 miles of Turtle Rock.",
        landmark: ModelData().landmarks[0]
    )
}
