//___FILEHEADER___

import Foundation
import CoreData

protocol UserLocalDataSource {
    func fetchUsers() async throws -> [User]
    func saveUsers(_ users: [User]) async throws
    func deleteUser(id: Int) async throws
}

final class UserLocalDataSourceCoreData: UserLocalDataSource {
    private let context: NSManagedObjectContext

    init(context: NSManagedObjectContext) {
        self.context = context
    }

    func fetchUsers() async throws -> [User] {
        let request = NSFetchRequest<CDUser>(entityName: "CDUser")
        let results = try context.fetch(request)
        return results.map {
            User(id: Int($0.id), name: $0.name ?? "", email: $0.email ?? "")
        }
    }

    func saveUsers(_ users: [User]) async throws {
        for user in users {
            let cdUser = CDUser(context: context)
            cdUser.id = Int32(user.id)
            cdUser.name = user.name
            cdUser.email = user.email
        }
        try context.save()
    }
}
