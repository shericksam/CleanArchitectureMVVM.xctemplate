//___FILEHEADER___


@testable import ___PACKAGENAME:identifier___

class MockUserRemoteDataSource: UserRemoteDataSource {
    var fetchedUsers: [User] = [
        User(id: 1, name: "Erick", email: "erick@email.com"),
        User(id: 2, name: "Alex", email: "alex@email.com")
    ]

    func fetchUsers(path: String, method: String, headers: [String: String]?) async throws -> [User] {
        return fetchedUsers
    }

    func addUsers(users: [User], path: String, method: String, headers: [String: String]?) async throws {}

    func deleteUser(id: Int, path: String, method: String, headers: [String: String]?) async throws {}
}
