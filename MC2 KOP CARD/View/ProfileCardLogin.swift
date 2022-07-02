//
//  ProfileCardLogin.swift
//  kopcard
//
//  Created by Syifa Mashadi on 27/06/22.
//

import SwiftUI

struct ProfileCardLogin: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.gray)
                .frame(width: 390, height: 797)
                .opacity(0.5)
            ZStack{
                RoundedRectangle(cornerRadius: 7, style: .continuous)
                    .fill(Color.white)
                    .overlay(RoundedRectangle(cornerRadius: 7, style: .continuous).stroke(Color.gray))
                    .frame(width: 259, height: 94)
                VStack{
                    Text("Let's track your activity")
                    ZStack{
                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(Color.white)
                            .overlay(RoundedRectangle(cornerRadius: 7, style: .continuous).stroke(Color.gray))
                            .frame(width: 104, height: 32)
                        Text("Login")
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.white)
                        .frame(width: 155, height: 140)
                    Text("EXO")
                        .fontWeight(.bold)
                        .frame(width: 155, height: 48)
                        .background(Color("BGColor"))
                        .cornerRadius(10)
                        .offset(y: 63)
                        .foregroundColor(.black)
                }
            }
        }
    }
}
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                VStack {
//                    Text("Profile")
//                        .foregroundColor(Color("color.red"))
//                        .font(.custom("Krungthep", size: 36))
//                }
//            }
//        }

struct ProfileCardLogin_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCardLogin()
    }
}
