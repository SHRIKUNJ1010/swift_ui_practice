//
//  LandMarkDetailView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkDetailView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height:300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom,-130)
            TextView()
            Spacer()
        }
    }
}

#Preview {
    LandMarkDetailView()
}
