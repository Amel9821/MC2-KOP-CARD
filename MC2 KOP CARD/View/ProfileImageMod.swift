//
//  ProfileImageMod.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 03/07/22.
//

import Foundation
import SwiftUI

extension Image {

    func profileImageMod() -> some View {
        self
            .resizable()
            
            .scaledToFill()
            .background(.white)
            .foregroundColor(.black)
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
          //  .clipShape(RoundedRectangle(cornerRadius: 55))
    }

}

