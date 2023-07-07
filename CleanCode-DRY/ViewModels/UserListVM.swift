//
//  UserListVM.swift
//  CleanCode-DRY
//
//  Created by Eric on 07/07/2023.
//

import Foundation

class UserListVM: ObservableObject {
    @Published private(set) var users: [User] = [
        User(firstName: "John", lastName: "Wick"),
        User(firstName: "Tony", lastName: "Stark")
    ]
    
    // CRUD - Create Read Update and Delete fucntions
    
    func add(user: User) {
        users.append(user)
    }
    
    func update(user: User) {
        guard let index = users.firstIndex(where: { $0.id == user.id }) else {
            return
        }
        users[index] = user
    }
}
