//
//  ComunicationView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct ComunicationView: View {
    
    @StateObject var viewModel:
    ComunicationViewModel =
    ComunicationViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.users) { user in
                NavigationLink {
                    ComuniDetailView(user: user)
                } label: {
                    ComuniListView(user: user)
                }
            }
            .frame(height: 100)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Text("Chats")
                    .font(.skFont(type: .largeHeavy))
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    viewModel.shouldShowSeachView.toggle()
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                
                Button {
                    viewModel.shouldShowComuniPlusView.toggle()
                } label: {
                    Image(systemName: "plus.bubble")
                }

                Button {
                    viewModel.shouldShowOpenChatView.toggle()
                } label: {
                    Image(systemName: "bubble.left.and.bubble.right")
                }
                Button {
                    viewModel.shouldShowSettingView.toggle()
                } label: {
                    Image(systemName: "gearshape")
                }
            }
        }
        .sheet(isPresented: $viewModel.shouldShowSeachView) {
            SearchView(users: viewModel.users)
        }
        .sheet(isPresented: $viewModel.shouldShowComuniPlusView) {
            PersonPlusView()
        }
        .sheet(isPresented: $viewModel.shouldShowOpenChatView) {
            OpenChatView()
        }
        .sheet(isPresented: $viewModel.shouldShowSettingView) {
            SettingView()
        }
    }
}

struct ComunicationView_Previews: PreviewProvider {
    static var previews: some View {
        ComunicationView()
    }
}
