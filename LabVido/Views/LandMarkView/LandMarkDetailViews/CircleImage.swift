//
//  CircleImage.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var width: Double = 250
    var height: Double = 250
    
    var body: some View {
        image
            .frame(
                width: width,
                height: height
            )
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(
                    Color(.white),
                    style: StrokeStyle(lineWidth: 4)
                    )
                    .shadow(color: .gray, radius: 7)
            
            )
    }
}

#Preview {
    CircleImage(image: landmarksWithoutObservable[0].image)
}
