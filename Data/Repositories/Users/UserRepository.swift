//___FILEHEADER___

import Foundation

protocol UserRepository {
    func fetchUsers() async throws -> [User]
    func addUsers(users: [User]) async throws
    func deleteUser(id: Int) async throws
}
