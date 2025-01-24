//
//  PageView.swift
//  LabVido
//
//  Created by SSLLP-126 on 23/01/25.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages,currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
        .aspectRatio(3.0 / 2.0, contentMode: .fit)
    }
}

#Preview {
    PageView(
        pages: ModelData().features.map { FeatureCard(landmark: $0)}
    )
}
