//
//  ContentView.swift
//  LabVido
//
//  Created by SSLLP-126 on 16/01/25.
//

import SwiftUI

struct WhyNotTryView: View {
    var activities = ["Archery","Baseball","Basketball","Bowling","Boxing","Cricket","Curling","Fencing","Golf","Hiking","Lacrosse","Rugby","Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]

    
    @State private var selected = "Cricket"
    
    @State private var id = 1
    
    var body: some View {
        VStack {
            
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack {
                UnevenRoundedRectangle(cornerRadii: RectangleCornerRadii(topLeading: 20,bottomLeading: 20,bottomTrailing: 20,topTrailing: 20))
                    .fill(colors.randomElement() ?? .blue)
                    .padding(
                        EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                    )
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                
                Text("\(selected)!")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .foregroundColor(colors.randomElement() ?? .blue)
            }
            .transition(.slide)
            .id(id)
            
            Spacer()
            
            Button("Try Again") {
                withAnimation(.easeInOut(duration: 1)) {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
                
            }
            .buttonStyle(.borderedProminent)
        }
        
        
    }
}

#Preview {
    WhyNotTryView()
}
