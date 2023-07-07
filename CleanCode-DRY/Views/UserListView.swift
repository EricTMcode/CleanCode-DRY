//
//  ContentView.swift
//  CleanCode-DRY
//
//  Created by Eric on 07/07/2023.
//

import SwiftUI

struct UserListView: View {
    @StateObject var vm = UserListVM()
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {
            List(vm.users) { user in
                HStack {
                    NavigationLink {
                        UserEditView(user: user) { returnedUser in
                            vm.update(user: returnedUser)
                        }
                    } label: {
                        Text(user.firstName)
                        Text(user.lastName)
                    }
                }
            }
            .navigationTitle("Users")
            .toolbar {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Add")
                }
            }
            .sheet(isPresented: $showSheet) {
                UserEditView(user: User()) { returnedUser in
                    vm.add(user: returnedUser)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
