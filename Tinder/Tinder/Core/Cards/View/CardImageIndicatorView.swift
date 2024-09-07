//
//  CardImageIndicatorView.swift
//  Tinder
//
//  Created by MeTaLlOiD on 05/09/24.
//

import SwiftUI

struct CardImageIndicatorView: View {
    
    let currentImageIndex: Int
    let imageCount: Int
    
    var body: some View {
        ForEach(0 ..< imageCount, id: \.self) { index in
            Capsule()
                .frame(width: 100, height: 4)
        }
    }
}

struct CardImageIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        CardImageIndicatorView(currentImageIndex: 1, imageCount: 3)
    }
}
