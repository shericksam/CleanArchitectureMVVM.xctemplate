//___FILEHEADER___

import SwiftUI

struct HideStyle: ViewModifier {
    var hidden: Bool
    func body(content: Content) -> some View {
        if !hidden {
            content
        }
    }
}

extension View {
    func isHidden(_ hidden: Bool) -> some View {
        modifier(HideStyle(hidden: hidden))
    }
}
