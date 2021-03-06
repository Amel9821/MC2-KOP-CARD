//
//  LoginViewHaveAccount.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 30/06/22.
//

import SwiftUI

struct LoginViewHaveAccount: View {
    
    @State var showTabBar = false
    @State var showDashboardAfterLogin: Bool = false
    @Binding var email: String
    @Binding var password: String
    @Binding var username: String
    @Binding var name: String
    @Binding var imageSelected: UIImage
    
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
            SecureField("Password", text: $password)
                .padding()
                .frame(width: 280, height: 50, alignment: .center)
                .background(.gray.opacity(0.1))
                .padding()
            if email != "" && password != "" {
                Button {
               // UserDefaults.standard.set(true, forKey: "isDoneLogin")
               showTabBar.toggle()
                } label: {
                    Text("Sign in").font(Font.system(size: 20, design: .rounded))
                        .padding()
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color("ColorButton"))
                        .cornerRadius(10)
                        .foregroundColor(Color("ColorText"))
                        .padding()
                }
                
            } else {
                Text("Sign in").font(Font.system(size: 20, design: .rounded))
                    .padding()
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding()
            }
        }
        .fullScreenCover(isPresented: $showTabBar) {
            TabBar(username: $username, name: $name, TabBar: $showTabBar, imageSelected: $imageSelected)
    }
}
}
