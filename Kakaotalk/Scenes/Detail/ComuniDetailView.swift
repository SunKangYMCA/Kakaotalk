//
//  ComuniDetailView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-27.
//

import SwiftUI

struct ComuniDetailView: View {
    
    @State private var shouldShowSearchPage: Bool = false
    @State private var shouldShowSettingPage: Bool = false
    
    var user: User
    
    var body: some View {
        VStack {
            yourChatSection
                .padding()
            
            myChatSection
            
            Spacer()
            
        }
        .background(
            AsyncImage(url: user.largePictureURL)
            { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .blur(radius: 9)
            } placeholder: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
        )
        .navigationTitle(user.fullName)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    shouldShowSearchPage.toggle()
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                
                Button {
                    shouldShowSettingPage.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal")
                }

            }
        }
        .sheet(isPresented: $shouldShowSearchPage) {
            SearchPage(users: [User.mockUser])
        }
        .sheet(isPresented: $shouldShowSettingPage) {
            SettingPage()
        }
    }
    
    private var yourChatSection: some View {
        HStack {
            AsyncImage(url: user.thumbnailPictureURL)
            { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                
            }
            
            VStack {
                HStack {
                    Text(user.name.first)
                        .foregroundColor(.gray)
                        .padding(.bottom, 5)
                    Spacer()
                }
                HStack {
                    Text("Hello, how are you")
                        .background(
                            Image(systemName: "message.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 170, height: 35)
                                .padding([.leading, .top], 6)
                        )
                    Spacer()
                }
                
            }
            
            
        }
        .padding(.horizontal, 16)
    }
    
    private var myChatSection: some View {
        VStack {
            HStack {
                Spacer()
                Text("Good, how's going?")
                    .background(
                        Image(systemName: "message.fill")
                            .resizable()
                            .foregroundColor(.yellow)
                            .frame(width: 170, height: 35)
                            .padding([.leading, .top], 6)
                    )
            }
        }
        .padding(.horizontal, 16)
    }
}


//struct ComuniDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        ComuniDetailView(user: User.mockUser, users: [User.mockUser])
//    }
//}
