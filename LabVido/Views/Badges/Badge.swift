//
//  Badge.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        ForEach(0..<16) {
            index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(16)) * 360.0
            )
        }
        
            .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader {
                geometry in
                badgeSymbols
                    .scaleEffect(2.0/7.0,anchor: .top)
                    .position(
                        x: geometry.size.width / 2.0,
                        y: (5.0/7.0) * geometry.size.height
                    )
            }
    
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
