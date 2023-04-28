//
//  SearchPage.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct SearchPage: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var text: String = ""
    
    var users: [User]
    
    var body: some View {
        VStack {
            textFieldSection
                .padding()
            
            HStack(spacing: 32) {
                Text("Recent")
                    .font(.skFont(type: .smallBold))
                Text("Clear All")
                    .font(.skFont(type: .small))
                    .foregroundColor(.gray)
                Text("Auto Save OFF")
                    .font(.skFont(type: .small))
                    .foregroundColor(.gray)
            
                Spacer()
            }
            .padding(.horizontal, 16)
        
            
            
            ProfileSection(users: users)
       
            Spacer()
    
        }
    }
    
    private var textFieldSection: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField(text: $text) {
                    Text("Search")
                        .font(.skFont(type: .normal))
                }
            }
            .padding()
            .background(
                Color.gray
                    .opacity(0.2)
                    .cornerRadius(.cornerRadius)
            )
            
            .keyboardType(.default)
            .padding(.horizontal, 16)
            
            Button {
                dismiss()
            } label: {
                Text("Cancel")
                    .font(.skFont(type: .normalBold))
                    .foregroundColor(.black)
            }
            .padding(.trailing, 32)
        }
    }
}
struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage(users: [User.mockUser])
    }
}
