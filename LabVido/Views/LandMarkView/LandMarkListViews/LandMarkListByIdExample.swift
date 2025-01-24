//
//  LandMarkListByIdExample.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkListByIdExample: View {
    var body: some View {
        List(landmarks, id: \.id) {
            landmark in LandmarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandMarkListByIdExample()
}
