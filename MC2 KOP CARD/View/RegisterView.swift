//
//  RegisterView.swift
//  MC2 KOP CARD
//
//  Created by Amalia . on 26/06/22.
//

import SwiftUI

struct RegisterView: View {
    
    //   @State var showLoginHaveAccount : Bool = false
    @State var showLoginHaveAccount: Bool = false
    @Binding var showRegisterView: Bool
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var username: String = ""
    @State var imageSelected = UIImage()
    
    var body: some View {
        NavigationView{
        VStack {
            Image("GambarKartu")
                .resizable()
                .frame(width: 104, height: 141, alignment: .center)
            Text("KOP CARD")
                .font(.custom("Krungthep", size: 30))
                .foregroundColor(Color("ColorText"))
            
            TextField("Name", text: $name)
                .padding()
                .frame(width: 280, height: 50, alignment: .center)
                .background(.gray.opacity(0.1))
                .padding()
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
            TextField("Username", text: $username)
                .padding()
                .frame(width: 280, height: 50, alignment: .center)
                .background(.gray.opacity(0.1))
                .padding()
            if name != "" && email != "" && password != "" && username != "" {
                NavigationLink(destination: LoginViewHaveAccount(email: $email, password: $password, username: $username, name: $name, imageSelected: $imageSelected), label: {
                    Text("Register").font(Font.system(size: 20, design: .rounded))
                        .padding()
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color("ColorButton"))
                        .cornerRadius(10)
                        .foregroundColor(Color("ColorText"))
                        .padding()
//                        .onTapGesture{
////                            if name != "" && email != "" && password != "" && username != "" {}
//                            self.showLoginHaveAccount = true
//                            //ketika uda diisi semua baru bisa klik button
//                        }
                }
            )}else {
                Text("Register").font(Font.system(size: 20, design: .rounded))
                    .padding()
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .padding()
            }
        }
        
        }
        
    }
}
