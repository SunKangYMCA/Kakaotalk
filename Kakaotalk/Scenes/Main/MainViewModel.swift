//
//  MainViewModel.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

class MainViewModel: ObservableObject {
    
    @Published var shouldShowSearchView: Bool = false
    @Published var shouldShowPersonPlusView: Bool = false
    @Published var shouldShowSettingView: Bool = false
    
    @Published var users: [User] = []
    
    private var networkManager: NetworkManager = NetworkManager.shared
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.white
        UINavigationBar.appearance().barTintColor = UIColor.white
        fetchUsers()
    }
    
    func fetchUsers() {
        networkManager.fetchUsers { fetchedUsers, error in
            DispatchQueue.main.async {
                guard let fetchedUsers = fetchedUsers else {
                    if let error = error {}
                    return
                }
                self.users = fetchedUsers
            }
        }
    }
}
