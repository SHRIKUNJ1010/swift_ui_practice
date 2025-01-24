//
//  MapView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: -34.011_286,
                longitude:116.166_868
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.05,
                longitudeDelta: 0.05
            )
        )
    }
}

#Preview {
    MapView()
}
