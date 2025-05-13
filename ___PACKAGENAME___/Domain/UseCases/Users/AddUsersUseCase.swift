//___FILEHEADER___

import Foundation

struct AddUsersUseCase {
    let repository: UserRepository

    func execute(users: [User]) async throws {
        try await repository.addUsers(users: users)
    }
}
