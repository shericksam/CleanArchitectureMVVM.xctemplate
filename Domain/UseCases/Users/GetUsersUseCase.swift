//___FILEHEADER___

import Foundation

struct GetUsersUseCase {
    let repository: UserRepository

    func execute() async throws -> [User] {
        try await repository.fetchUsers()
    }
}
