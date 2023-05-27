//
//  BottomPopup_Default.swift of PopupView-Example
//
//  Created by Tomasz Kurylik
//    - Twitter: https://twitter.com/tkurylik
//    - Mail: tomasz.kurylik@mijick.com
//
//  Copyright ©2023 Mijick. Licensed under MIT License.


import SwiftUI
import PopupView

struct BottomPopup_Default: BottomPopup {
    let id: String


    func createContent() -> some View {
        VStack(spacing: 0) {
            
            Capsule()
                .fill(Color.onBackgroundTertiary)
                .frame(width: 32, height: 6)
                .alignHorizontally(.center).padding(.vertical)
            
            Image("grad-1")
                .resizable()
                .frame(120)
            Spacer.height(16)
            Text("Free Ride?")
                .font(.spaceGrotesk(22))
                .foregroundColor(.onBackgroundPrimary)
            Spacer.height(8)
            Text("Mollit in nisi eiusmod enim enim proident id occaecat sunt est nulla. Nisi nisi dolor consectetur dolore pariatur.")
                .font(.openSansRegular(14.5))
                .foregroundColor(.onBackgroundSecondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 8)
                .fixedSize(horizontal: false, vertical: true)
            Spacer.height(24)
            Button(action: Self(id: .random).showAndStack) {
                Text("Unlock")
                    .font(.satoshiBold(14.5))
                    .foregroundColor(.white)
                    .padding(.vertical, 14)
                    .frame(maxWidth: .infinity)
                    .background(Color.onBackgroundPrimary)
                    .mask(Capsule())
        }
        .padding(.top, 12)
        .padding(.bottom, 4)
        .padding(.horizontal, 28)
    }
}

}
