//
//  MainView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-29.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        
        List {
            ForEach(viewModel.users) { user in
                NavigationLink {
                    MainDetailView(user: user)
                } label: {
                    MainListView(user: user)
                }
            }
        }
        
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Friends")
                    .font(.skFont(type: .largeHeavy))
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    viewModel.shouldShowSearchView.toggle()
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                }
                
                Button {
                    viewModel.shouldShowPersonPlusView.toggle()
                } label: {
                    Image(systemName: "person.badge.plus")
                        .foregroundColor(.black)
                }
                
                Button {
                    viewModel.shouldShowSettingView.toggle()
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                }
            }
        }
        
        .sheet(isPresented: $viewModel.shouldShowSearchView) {
            SearchView(users: viewModel.users)
        }
        
        .sheet(isPresented: $viewModel.shouldShowPersonPlusView) {
            PersonPlusView()
        }
        
        .sheet(isPresented: $viewModel.shouldShowSettingView) {
            SettingView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
