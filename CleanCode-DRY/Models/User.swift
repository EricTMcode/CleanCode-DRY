//
//  User.swift
//  CleanCode-DRY
//
//  Created by Eric on 07/07/2023.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var firstName = ""
    var lastName = ""
}
