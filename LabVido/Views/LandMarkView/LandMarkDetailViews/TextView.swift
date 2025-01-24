//
//  TextView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct TextView: View {
    @Environment(ModelData.self) var modelData
    var name: String
    var park: String
    var state: String
    var description: String
    @Binding var isFavorite: Bool
    
    var body: some View {
    
        VStack(alignment: .leading) {
            HStack {
                Text(name)
                    .font(.title)
                FavoriteButton(isSet: $isFavorite)
            }
            HStack{
                Text(park)
                    .font(.subheadline)
                Spacer()
                Text(state)
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            
            Text("About \(name)")
                .font(.title2)
            Text(description)
            
        }.padding()
    }
}

#Preview {
    TextView(
        name: landmarksWithoutObservable[0].name,
        park: landmarksWithoutObservable[0].park,
        state: landmarksWithoutObservable[0].state,
        description: landmarksWithoutObservable[0].description,
        isFavorite: .constant(true)
    )
    .environment(ModelData())
}
