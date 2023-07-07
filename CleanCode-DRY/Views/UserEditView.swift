//
//  UserEditView.swift
//  CleanCode-DRY
//
//  Created by Eric on 07/07/2023.
//

import SwiftUI

struct UserEditView: View {
    @State var user: User
    var save: (User)->()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List {
            TextField("first name", text: $user.firstName)
            TextField("last name", text: $user.lastName)
            Button {
                save(user)
                dismiss()
            } label: {
                Text("Save")
            }
        }
    }
}

struct UserEditView_Previews: PreviewProvider {
    static var previews: some View {
        UserEditView(user: User(firstName: "Eric", lastName: "TM"), save: { _ in })
    }
}

