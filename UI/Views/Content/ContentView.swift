//___FILEHEADER___

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()

    var body: some View {
        Text("Hello, \(viewModel.title)")
    }
}