//___FILEHEADER___

import SwiftUI

struct FullScreenStyle: ViewModifier {
    func body(content: Content) -> some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                content
                Spacer()
            }
            Spacer()
        }
    }
}

extension View {
    func showFullScreen() -> some View {
        modifier(FullScreenStyle())
    }
}
