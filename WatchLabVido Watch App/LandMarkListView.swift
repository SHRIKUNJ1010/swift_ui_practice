//
//  LandMarkListView.swift
//  WatchLabVido Watch App
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI

struct LandMarkListView: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter {
            landmark in (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favourites Only")
                })
                
                ForEach(filteredLandmarks) {
                    landmark in NavigationLink{
                        LandMarkDetailView(landmark: landmark)
                    } label: {
                        LandMarkRowView(landmark: landmark)
                    }
                }
            }
            .animation(.default,value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandMarkListView()
        .environment(ModelData())
}
