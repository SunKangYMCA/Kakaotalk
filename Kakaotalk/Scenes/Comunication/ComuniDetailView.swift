//
//  ComuniDetailView.swift
//  111
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct ComuniDetailView: View {
    
    @State private var shouldShowSearchView: Bool = false
    @State private var shouldShowSettingView: Bool = false
    
    var user: User
    
    var body: some View {
        VStack {
            yourChatSection
                .padding()
            
            myChatSection
            
            Spacer()
            
        }
        .background(
            AsyncImage(url: user.largePictureURL, content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .blur(radius: 9)
            }, placeholder: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
            }
                      )
        )
        .navigationTitle(user.fullName)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    shouldShowSearchView.toggle()
                } label: {
                    Image(systemName: "magmifyingglass")
                }
                
                Button {
                    shouldShowSettingView.toggle()
                } label: {
                    Image(systemName: "line.3.horizontal")
                }
            }
        }
        .sheet(isPresented: $shouldShowSearchView, content: {
            SearchView(users: [User.mockUser])
        })
        .sheet(isPresented: $shouldShowSettingView) {
            SettingView()
        }
    }
    
    private var yourChatSection: some View {
        HStack {
            AsyncImageCircleTypeSection(
                title: user.thumbnailPictureURL,
                width: 48,
                height: 48,
                placeholderSysname: "person"
            )
            
            VStack {
                HStack {
                    TextSection(
                        title: user.name.first,
                        font: .small,
                        inColor: .gray
                    )
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
                Text("Good, How's going?")
                    . background(
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

struct ComuniDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComuniDetailView(user: User.mockUser)
    }
}
