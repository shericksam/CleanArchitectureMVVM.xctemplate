//___FILEHEADER___

import SwiftData

@Model
class UserModel {
    @Attribute(.unique) var id: Int
    var name: String
    var email: String

    init(id: Int, name: String, email: String) {
        self.id = id
        self.name = name
        self.email = email
    }
}
