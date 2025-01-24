//
//  LandMarkDetailView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkDetailView: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y: -125)
                .padding(.bottom,-125)
            TextView(
                name: landmark.name,
                park: landmark.park,
                state: landmark.state,
                description: landmark.description,
                isFavorite: $modelData.landmarks[landmarkIndex].isFavorite
                )
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandMarkDetailView(landmark: ModelData().landmarks[0])
        .environment(ModelData())
}
