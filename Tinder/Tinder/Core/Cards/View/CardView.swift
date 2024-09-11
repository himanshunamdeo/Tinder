//
//  CardView.swift
//  Tinder
//
//  Created by MeTaLlOiD on 03/09/24.
//

import SwiftUI

struct CardView: View {
    
    @ObservedObject var viewModel: CardViewModel
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    @State private var currentImageIndex = 0
    
    let model: CardModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(user.profileImageUrls[currentImageIndex])
                    .resizable()
                    .scaledToFill()
                    .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
                    .overlay {
                        ImageScrollingOverlay(currentImageIndex: $currentImageIndex, imageCount: imageCount)
                    }
                CardImageIndicatorView(currentImageIndex: currentImageIndex,
                                       imageCount: imageCount)
                
                SwipeActionIndicator(xOffset: $xOffset)
                    .padding()
            }
            
            UserInfoView(user: user)
                .foregroundStyle(.white)
        }
        .onReceive(viewModel.$buttonSwipeAction, perform: { action in
            onReceiveSwipeAction(action: action)
        })
        .background(.black)
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.easeInOut, value: xOffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(dragGestureEnded)
        )
    }
}

private extension CardView {
    
    var user: User {
        return model.user
    }
    
    var imageCount: Int {
        return user.profileImageUrls.count
    }
}
private extension CardView {
    
    func onDragChanged(value: _ChangedGesture<DragGesture>.Value) {
        xOffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }
    
    func dragGestureEnded(value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width
        
        if abs(width) <= abs(SizeConstants.screenCutoff) {
            returnToCenter()
            return
        }
        
        if width >= SizeConstants.screenCutoff {
            swipeRight()
        } else {
            swipeLeft()
        }
    }
}

private extension CardView {
    
    func returnToCenter() {
        xOffset = 0
        degrees = 0
    }
    
    func swipeRight() {
        withAnimation(.easeInOut(duration: 2)) {
            xOffset = 500
            degrees = 12
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            viewModel.removeCard(cardModel: model)
        }
    }
    
    func swipeLeft() {
        withAnimation(.easeInOut(duration: 2)) {
            xOffset = -500
            degrees = -12
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            viewModel.removeCard(cardModel: model)
        }
    }
    
    func onReceiveSwipeAction(action: SwipeAction?) {
        guard let action = action else { return }
        
        let topCard = viewModel.cardModels.last
        
        if topCard == model {
            switch action {
            case .like:
                swipeRight()
            case .reject:
                swipeLeft()
                
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(viewModel: CardViewModel(service: CardService()), model: CardModel(user: MockData.users[0]))
    }
}
