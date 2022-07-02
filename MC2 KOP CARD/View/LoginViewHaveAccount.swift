//
//  LoginViewHaveAccount.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 30/06/22.
//

import SwiftUI

struct LoginViewHaveAccount: View {
    
  //  @Binding var showLoginHaveAccount: Bool
    @Binding var email: String
    @Binding var password: String
    @Binding var username: String
    
    var body: some View {
            VStack {
                Image("GambarKartu")
                    .resizable()
                    .frame(width: 104, height: 141, alignment: .center)
                Text("KOP CARD")
                    .font(.custom("Krungthep", size: 30))
                    .foregroundColor(Color("ColorText"))
                    
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(.gray.opacity(0.1))
                    .padding()
                TextField("Password", text: $password)
                    .padding()
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(.gray.opacity(0.1))
                    .padding()
                if email == email && password == password {
                NavigationLink(destination: QRGeneratorView(username: $username), label: {
                Text("Sign in").font(Font.system(size: 20, design: .rounded))
                    .padding()
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color("ColorButton"))
                    .cornerRadius(10)
                    .foregroundColor(Color("ColorText"))
                    .padding()
                }
                    )
            }
        }
    }
}
