//
//  ComunicationViewModel.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

class ComunicationViewModel:
    ObservableObject {
    
    @Published var shouldShowSeachView: Bool = false
    @Published var shouldShowComuniPlusView: Bool = false
    @Published var shouldShowOpenChatView: Bool = false
    @Published var shouldShowSettingView: Bool = false
    
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
