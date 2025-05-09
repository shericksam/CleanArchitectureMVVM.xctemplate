//___FILEHEADER___

import SwiftUI

struct CardModifier: ViewModifier {
    var cornerRadius: CGFloat = 8
    var x: CGFloat = 6, y: CGFloat = 8

    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 6, x: x, y: y)
            )
    }
}

extension View {
    func card(cornerRadius: CGFloat = 8, x: CGFloat = 6, y: CGFloat = 8) -> some View {
        modifier(CardModifier(cornerRadius: cornerRadius, x: x, y: y))
    }
}
