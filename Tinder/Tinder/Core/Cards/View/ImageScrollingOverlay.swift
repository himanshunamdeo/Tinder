//
//  ImageScrollingOverlay.swift
//  Tinder
//
//  Created by MeTaLlOiD on 05/09/24.
//

import SwiftUI

struct ImageScrollingOverlay: View {
    
    @Binding var currentImageIndex: Int
    
    let imageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: false)
                }
            
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
        }
        .foregroundColor(.white.opacity(0.01))
    }
}

private extension ImageScrollingOverlay {
    func updateImageIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < imageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

struct ImageScrollingOverlay_Previews: PreviewProvider {
    static var previews: some View {
        ImageScrollingOverlay(currentImageIndex: .constant(1), imageCount: 3)
    }
}
