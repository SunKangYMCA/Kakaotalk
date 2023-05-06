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
            if viewModel.shouldShowTabViewSection {
                TabViewSection
            } else {
                ImageSection
                    .onAppear {
                        viewModel.showTabView()
                    }
            }
        }
    }
    
    private var TabViewSection: some View {
        TabView {
            NavigationView {
                MainView()
            }
            .tabItem {
                Label("Main", systemImage: "person")
            }
            
            NavigationView {
                ComunicationView()
            }
            .tabItem {
                Label("Chat", systemImage: "message")
            }
            
            NavigationView {
                PhoneView()
            }
            .tabItem {
                Label("Phone", systemImage: "phone")
            }
            
            NavigationView {
                SettingView()
            }
            .tabItem {
                Label("Settings", systemImage: "ellipsis")
            }
        }
        .accentColor(.black)
    }
    
    
    private var ImageSection: some View {
        
        ZStack {
            Color(.yellow)
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                Text("TALK")
                    .font(.skFont(type: .hugeHeavy))
                    .foregroundColor(.yellow)
                    .padding(.bottom, 20)
                    .background(
                        Image(systemName: "message.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150)
                    )
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
