//
//  LoginView.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 26/06/22.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
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
                Text("Sign in").font(Font.system(size: 20, design: .rounded))
                    .padding()
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color("ColorButton"))
                    .cornerRadius(10)
                    .foregroundColor(Color("ColorText"))
                    .padding()
                HStack {
                    Text("Don't have an account?")
                    NavigationLink(destination: RegisterView(), label: {
                        Text("Register now!")
                            .foregroundColor(.red)
                    }
                    )
                }
            }
        }
    }
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
