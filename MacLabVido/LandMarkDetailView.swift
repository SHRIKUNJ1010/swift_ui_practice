//
//  LandMarkDetailView.swift
//  MacLabVido
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI
import MapKit

struct LandMarkDetailView: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                MapView(coordinate: landmark.locationCoordinate)
                    .frame(height: 300)
                
                Button("Open in Maps") {
                    let destination = MKMapItem(placemark: MKPlacemark(coordinate: landmark.locationCoordinate))
                    destination.name = landmark.name
                    destination.openInMaps()
                }
                .padding()
            }
            
            
            
            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 24) {
                    CircleImage(
                        image: landmark.image.resizable(),
                        width: 160,
                        height: 160
                    )
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(landmark.name)
                                .font(.title)
                            FavoriteButton(
                                isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                            .buttonStyle(.plain)
                        }
                        
                        VStack(alignment: .leading) {
                            Text(landmark.park)
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
                
            Divider()
                
            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
            }
            .padding()
            .frame(minWidth: 700)
            .offset(y: -50)
        }
        .navigationTitle(landmark.name)
    }
}

#Preview {
    let modelData = ModelData()
    return LandMarkDetailView(landmark: modelData.landmarks[0])
        .environment(modelData)
        .frame(width: 850,height: 700)
}
