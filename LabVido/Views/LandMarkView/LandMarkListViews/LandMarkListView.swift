//
//  LandMarkListView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkListView: View {
    var body: some View {
        List(landmarks) {
            landmark in LandmarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandMarkListView()
}
