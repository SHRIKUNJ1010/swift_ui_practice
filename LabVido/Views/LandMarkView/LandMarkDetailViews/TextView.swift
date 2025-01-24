//
//  TextView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack{
                Text("Joshua Tree Natinal Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            
            Text("About Turtle Rock")
                .font(.title2)
            Text("Description text goes here.")
            
        }.padding()
    }
}

#Preview {
    TextView()
}
