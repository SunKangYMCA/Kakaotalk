//
//  SearchView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var viewModel: SearchViewModel = SearchViewModel()
    
    private let rows: [GridItem] = [GridItem(.flexible())]
    
    var users: [User]
    
    var body: some View {
        VStack {
            HStack {
                SearchFieldSection(
                    binding: $viewModel.text,
                    placeholder: "Search",
                    font: .normalBold,
                    outColor: .gray,
                    opacity: 0.2,
                    keyboardType: .default
                )
                DismissCancelSection(
                    title: "Cancle",
                    font: .normalBold,
                    inColor: .black,
                    onSubmit: {
                        print("## test submit dismiss")
                    }
                )
                .padding(.trailing, 32)
            }
            
            .padding()
            HStack(spacing: 32) {
                TextSection(
                    title: "Recent",
                    font: .smallBold,
                    inColor: .black
                )
                TextSection(
                    title: "Clear All",
                    font: .smallBold,
                    inColor: .gray
                )
                TextSection(
                    title: "Auto Save OFF",
                    font: .small,
                    inColor: .gray
                )
                
                Spacer()
            }
            .padding(.horizontal, 16)
            
            ProfileSection
            
            Spacer()
        }
    }
    
    private var ProfileSection: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(users) { user in
                    HStack {
                        AsyncImageCircleTypeSection(
                            title: user.thumbnailPictureURL,
                            width: 36,
                            height: 36,
                            placeholderSysname: "person"
                        )
                        
                        TextSection(
                            title: user.fullName,
                            font: .smallBold,
                            inColor: .black
                        )
                        
                    }
                    .padding(.horizontal, 32)
                    .background(
                        Color.gray
                            .opacity(0.4)
                            .cornerRadius(.cornerRadius)
                    )
                }
            }
            .frame(height: 50)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(users: [User.mockUser])
    }
}
