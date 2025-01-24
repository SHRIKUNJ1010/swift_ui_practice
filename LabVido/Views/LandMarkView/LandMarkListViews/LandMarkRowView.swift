//
//  LandmarkRowView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandMarkRowView: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
                .cornerRadius(5)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .bold()
                #if !os(watchOS)
                Text(landmark.park)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                #endif
            }
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    Group {
        LandMarkRowView(landmark: landmarksWithoutObservable[0])
        LandMarkRowView(landmark: landmarksWithoutObservable[1])
    }
}

#Preview("Turtle Rock") {
    LandMarkRowView(landmark: landmarksWithoutObservable[0])
}

#Preview("Salmon") {
    LandMarkRowView(landmark: landmarksWithoutObservable[1])
}
