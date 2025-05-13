//___FILEHEADER___

import XCTest
@testable import ___PACKAGENAME:identifier___

final class APIClientTests: XCTestCase {
    func test_fetchUsers_returnsMockedResponse() async throws {
        let apiClient = MockAPIClient()
        let users = try await apiClient.fetchUsers(path: "/users", method: "GET", headers: nil)
        XCTAssertEqual(users.count, 2)
        XCTAssertEqual(users.first?.name, "Erick")
    }
}
