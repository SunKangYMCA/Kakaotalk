//
//  TabViewSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-26.
//

import SwiftUI

struct TabViewSection: View {
    
    var body: some View {
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
                SettingPage()
            }
            .tabItem {
                Label("Settings", systemImage: "ellipsis")
                
            }
        }
        .accentColor(.black)
    }
}

struct TabViewSection_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSection()
    }
}
