//
//  SplashViewModel.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var shouldShowTabViewSection: Bool = false
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    func onViewAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            withAnimation {
                self.shouldShowTabViewSection.toggle()
            }
        }
    }
}


