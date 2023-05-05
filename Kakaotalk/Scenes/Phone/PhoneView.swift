//
//  PhoneView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct PhoneView: View {
    var body: some View {
        VStack {
            Image(systemName: "phone")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.width * 0.7)
                .foregroundColor(.red)
            
            
            TextSection(
                title: "Phone Call Service\nCommig Soon",
                font: .hugeHeavy,
                inColor: .red
                
            )
            .multilineTextAlignment(.center)
        }
    }
}

struct PhoneView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneView()
    }
}
