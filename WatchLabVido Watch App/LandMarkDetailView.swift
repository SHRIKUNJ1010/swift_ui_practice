//
//  LandMarkDetailView.swift
//  WatchLabVido Watch App
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI

struct LandMarkDetailView: View {
    @Environment(ModelData.self) var modelData
       var landmark: Landmark


       var landmarkIndex: Int {
           modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
       }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            VStack {
                CircleImage(
                    image: landmark.image.resizable(),
                    width: 150,
                    height: 150
                )
                .padding(16)
                Text(landmark.name)
                    .font(.headline)
                    .lineLimit(0)
                Toggle(isOn: $modelData.landmarks[landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                
                Text(landmark.state)
                    .font(.caption)
                
                Divider()
                
                MapView(coordinate: landmark.locationCoordinate)
                    .scaledToFit()
            }
            .frame(width: 160)
        }.navigationTitle("Landmarks")
    }
}

#Preview {
    let modelData = ModelData()
        return LandMarkDetailView(landmark: modelData.landmarks[1])
            .environment(modelData)
}
