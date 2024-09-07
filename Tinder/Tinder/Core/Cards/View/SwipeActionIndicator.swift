//
//  SwipeActionIndicator.swift
//  Tinder
//
//  Created by MeTaLlOiD on 05/09/24.
//

import SwiftUI

struct SwipeActionIndicator: View {
    
    @Binding var xOffset: CGFloat
    
    var body: some View {
        HStack {
            Text("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))
                .opacity(xOffset / SizeConstants.screenCutoff)
            
            Spacer()
            
            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.red, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset/SizeConstants.screenCutoff) * -1)
        }
        .padding(40)
    }
}

struct SwipeActionIndicator_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionIndicator(xOffset: .constant(20))
    }
}
