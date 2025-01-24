//
//  LandmarkRowView.swift
//  LabVido
//
//  Created by SSLLP-126 on 21/01/25.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    Group {
        LandmarkRowView(landmark: landmarks[0])
        LandmarkRowView(landmark: landmarks[1])
    }
}

#Preview("Turtle Rock") {
    LandmarkRowView(landmark: landmarks[0])
}

#Preview("Salmon") {
    LandmarkRowView(landmark: landmarks[1])
}
