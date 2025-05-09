//___FILEHEADER___

import SwiftUI
import SwiftData

@main
struct ___PACKAGENAME:identifier___App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
            UserModel.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            DIContainer.makeUsersListView(context: sharedModelContainer.mainContext)
        }
        .modelContainer(sharedModelContainer)
    }
}
