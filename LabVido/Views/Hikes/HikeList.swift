//
//  HikeList.swift
//  LabVido
//
//  Created by SSLLP-126 on 22/01/25.
//

import SwiftUI

struct HikeList: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        List(modelData.hikes) {
            hike in HikeView(hike: hike)
        }
    }
}

#Preview {
    HikeList()
        .environment(ModelData())
}
