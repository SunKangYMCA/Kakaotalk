//
//  SplashView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct SplashView: View {
    
    @StateObject var viewModel: SplashViewModel = SplashViewModel()
    
    var body: some View {
        Group {
            if viewModel.shouldShowMainPage {
                TabViewSection()
            } else {
                ImageView()
                    .onAppear {
                        viewModel.onViewApper()
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
