//
//  HikeBadge.swift
//  LabVido
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI

struct HikeBadge: View {
    var name: String
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            Badge()
                .frame(width: 300,height: 300)
                .scaleEffect(1.0/3.0)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name)")
        }
        
    }
}

#Preview {
    HikeBadge(name: "Preview Testing")
}
