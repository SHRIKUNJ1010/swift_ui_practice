//
//  LandMarkListByIdExample.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkListByIdExample: View {
    var body: some View {
        List(landmarksWithoutObservable, id: \.id) {
            landmark in LandMarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandMarkListByIdExample()
}
