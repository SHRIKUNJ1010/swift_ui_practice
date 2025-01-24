//
//  CircleImage.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("circleImage1")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
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
    CircleImage()
}
