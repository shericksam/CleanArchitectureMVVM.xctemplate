//___FILEHEADER___


import XCTest
@testable import ___PACKAGENAME___

final class GetUsersUseCaseTests: XCTestCase {
    func test_execute_returnsUsers() async throws {
        let remote = MockUserRemoteDataSource()
        let local = MockUserLocalDataSource()
        let repo = UserRepositoryImpl(remote: remote, local: local)
        let useCase = GetUsersUseCase(repository: repo)
        let users = try await useCase.execute()
        XCTAssertFalse(users.isEmpty)
    }
}
