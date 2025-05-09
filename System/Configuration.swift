//___FILEHEADER___

import Foundation
import SwiftData
import SwiftUI

struct DIContainer {
    @MainActor
    static func makeUsersListView(context: ModelContext) -> some View {
        let remote = UserRemoteDataSourceImpl.shared
        let local = UserLocalDataSourceSwiftData(context: context)
        let repository = UserRepositoryImpl(remote: remote, local: local)
        let getUseCase = GetUsersUseCase(repository: repository)
        let addUsersUseCase = AddUsersUseCase(repository: repository)
        let deleteUseCase = DeleteUserUseCase(repository: repository)
        let userUseCases = UserUseCases(getUsers: getUseCase, addUsers: addUsersUseCase, deleteUser: deleteUseCase)
        let viewModel = UsersListViewModel(userUseCases: userUseCases)
        return UsersListView(viewModel: viewModel)
    }
}
