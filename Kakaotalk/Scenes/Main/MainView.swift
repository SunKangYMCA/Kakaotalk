//
//  MainView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    init(){

    }
    
    
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
                    viewModel.shouldShowSearchPage.toggle()
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                }
                
                Button {
                    withAnimation(.easeIn) {
                        viewModel.shouldShowPersonPage.toggle()
                    }
                } label: {
                    Image(systemName: "person.badge.plus")
                        .foregroundColor(.black)
                }
                
                Button {
                    viewModel.shouldShowSettingPage.toggle()
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                }
                
                }
            
            
        }
        .sheet(isPresented: $viewModel.shouldShowSearchPage) {
            SearchPage(users: viewModel.users)
        }
        .sheet(isPresented: $viewModel.shouldShowPersonPage) {
            PersonPlusPage()
        }
        .sheet(isPresented: $viewModel.shouldShowSettingPage) {
            SettingPage()
        }
    }
    
    
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
