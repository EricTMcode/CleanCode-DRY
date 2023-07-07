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
                    Text(user.firstName)
                    Text(user.lastName)
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
