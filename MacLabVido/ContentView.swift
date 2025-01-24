//
//  ContentView.swift
//  MacLabVido
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkListView()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
