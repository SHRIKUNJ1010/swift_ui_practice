//
//  LandMarkCommands.swift
//  LabVido
//
//  Created by SSLLP-126 on 24/01/25.
//

import SwiftUI

struct LandMarkCommands: Commands {
    @FocusedBinding(\.selectedLandmark) var selectedLandmark
    
    var body: some Commands {
        SidebarCommands()
        CommandMenu("Landmark") {
            Button("\(selectedLandmark?.isFavorite == true ? "Remove" : "Mark") as Favorite") {
                selectedLandmark?.isFavorite.toggle()
            }
            .keyboardShortcut("f",modifiers: [.shift, .option])
            .disabled(selectedLandmark == nil)
        }
    }
}

private struct SelectedLandMarkKey: FocusedValueKey {
    typealias Value = Binding<Landmark>
}

extension FocusedValues {
    var selectedLandmark: Binding<Landmark>? {
        get { self[SelectedLandMarkKey.self] }
        set { self[SelectedLandMarkKey.self] = newValue }
    }
}
