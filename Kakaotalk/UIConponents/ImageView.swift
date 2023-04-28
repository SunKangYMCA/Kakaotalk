//
//  ImageView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        
        ZStack {
            Color(.yellow)
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                Text("TALK")
                    .font(.skFont(type: .hugeBold))
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

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
