//
//  OpenChatView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct OpenChatView: View {
    var body: some View {
        VStack {
            Image(systemName: "bubble.left.and.bubble.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.width * 0.7)
                .foregroundColor(.orange)
            
            
            TextSection(
                title: "Open Chat Service\nCommig Soon",
                font: .hugeHeavy,
                textColor: .orange
                
            )
            .multilineTextAlignment(.center)
        }
    }
}

struct OpenChatView_Previews: PreviewProvider {
    static var previews: some View {
        OpenChatView()
    }
}
