//___FILEHEADER___

import Foundation

struct DeleteUserUseCase {
    let repository: UserRepository

    func execute(id: Int) async throws {
        try await repository.deleteUser(id: id)
    }
}
