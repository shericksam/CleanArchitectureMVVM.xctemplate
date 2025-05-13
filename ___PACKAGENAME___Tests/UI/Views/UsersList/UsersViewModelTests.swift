//___FILEHEADER___


import XCTest
@testable import ___PACKAGENAME:identifier___

@MainActor
final class UsersListViewModelTests: XCTestCase {
    func test_onAppear_loadsUsers() async {
        let remote = MockUserRemoteDataSource()
        let local = MockUserLocalDataSource()
        let repository = UserRepositoryImpl(remote: remote, local: local)
        let getUseCase = GetUsersUseCase(repository: repository)
        let addUsersUseCase = AddUsersUseCase(repository: repository)
        let deleteUseCase = DeleteUserUseCase(repository: repository)
        let userUseCases = UserUseCases(getUsers: getUseCase, addUsers: addUsersUseCase, deleteUser: deleteUseCase)
        let viewModel = UsersListViewModel(userUseCases: userUseCases)
        await viewModel.loadUsers()
        XCTAssertEqual(viewModel.users.count, 2)
        XCTAssertEqual(viewModel.users[0].name, "Erick")
    }
}
