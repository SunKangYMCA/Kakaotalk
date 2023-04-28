//
//  ComunicationViewModel.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-27.
//

import SwiftUI

class ComunicationViewModel: ObservableObject {
    
    @Published var shouldShowSearchPage: Bool = false
    @Published var shouldShowComuniPlusPage: Bool = false
    @Published var shouldShowOpenChatPage: Bool = false
    @Published var shouldShowSettingPage: Bool = false
    
    @Published var users: [User] = []
    
    private var networkManager: NetworkManager = NetworkManager.shared
    
    init() {
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
