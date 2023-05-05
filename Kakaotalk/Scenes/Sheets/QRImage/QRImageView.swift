//
//  QRImageView.swift
//  111
//
//  Created by 강성찬 on 2023-05-05.
//

import SwiftUI

struct QRImageView: View {
    var body: some View {
        Image("SunInviteImage")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.9)
    }
}

struct QRImageView_Previews: PreviewProvider {
    static var previews: some View {
        QRImageView()
    }
}
