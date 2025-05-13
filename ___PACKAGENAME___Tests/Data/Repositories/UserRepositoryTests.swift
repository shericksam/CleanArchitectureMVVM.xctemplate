//___FILEHEADER___

import XCTest
@testable import ___PACKAGENAME:identifier___

final class UserRepositoryTests: XCTestCase {
    func test_getUsers_mapsDTOtoEntity() async throws {
        let remote = MockUserRemoteDataSource()
        let local = MockUserLocalDataSource()
        let repo = UserRepositoryImpl(remote: remote, local: local)
        let users = try await repo.fetchUsers()
        XCTAssertEqual(users.count, 2)
        XCTAssertEqual(users.first?.name, "Erick")
    }
}
