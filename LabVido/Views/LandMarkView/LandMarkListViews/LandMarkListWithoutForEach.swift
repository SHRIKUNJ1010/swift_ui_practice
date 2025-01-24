//
//  LandMarkListWithForEach.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkListWithForEach: View {
    var body: some View {
        List(landmarksWithoutObservable) {
                landmark in NavigationLink{
                    LandMarkDetailView(landmark: landmark)
                } label: {
                    LandMarkRowView(landmark: landmark)
                }
            
        }
    }
}

#Preview {
    LandMarkListWithForEach()
}
