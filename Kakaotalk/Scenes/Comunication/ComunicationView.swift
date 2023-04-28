//
//  ComunicationView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-26.
//

import SwiftUI

struct ComunicationView: View {
    
    @StateObject var viewModel: ComunicationViewModel = ComunicationViewModel()
    
    var body: some View {
        List() {
            ForEach(viewModel.users) { user in
                NavigationLink {
                    ComuniDetailView(user: user)
                } label: {
                    ComuniListView(user: user)
                }
            }
            // init을 사용했더니 Row Color는 적용안해도 설정이 됨.
//            .listRowBackground(Color.white)
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
                    viewModel.shouldShowSearchPage.toggle()
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                
                Button {
                    viewModel.shouldShowComuniPlusPage.toggle()
                } label: {
                    Image(systemName: "plus.bubble")
                }
                
                Button {
                    viewModel.shouldShowOpenChatPage.toggle()
                } label: {
                    Image(systemName: "bubble.left.and.bubble.right")
                }
                
                Button {
                    viewModel.shouldShowSettingPage.toggle()
                } label: {
                    Image(systemName: "gearshape")
                }
                
            }
        }
        .sheet(isPresented: $viewModel.shouldShowSearchPage) {
            SearchPage(users: viewModel.users)
        }
        .sheet(isPresented: $viewModel.shouldShowComuniPlusPage) {
            PersonPlusPage()
        }
        .sheet(isPresented: $viewModel.shouldShowOpenChatPage) {
            OpenChatPage()
        }
        .sheet(isPresented: $viewModel.shouldShowSettingPage) {
            SettingPage()
        }
    }
}

struct ComunicationView_Previews: PreviewProvider {
    static var previews: some View {
        ComunicationView()
    }
}
