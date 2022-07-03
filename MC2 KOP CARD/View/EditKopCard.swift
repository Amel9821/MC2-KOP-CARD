//
//  ContentView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 22/06/22.
//

import SwiftUI

struct EditKopCard: View {
    
    @State private var Name : String = "Pieter"
    @State private var Username : String = "PieterNCT"
    @State private var Bio : String = "Suka-suka kamu, aku sukanya Nayeon cantik"
    @State private var Twitter : String = ""
    @State private var Instagram : String = ""
    @State private var Line : String = ""
    @State private var KakaoTalk : String = ""
    @State private var Telegram : String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                Image("addProfile")
                    .resizable()
                    .frame(width: 100, height: 100)
                List{
                    HStack{
                        Text("Name")
                        TextField("Jasmine Kpoper", text: $Name)
                            .foregroundColor(Color("DPurple"))
                            .padding(.leading, 21)
                    }
                    HStack{
                        Text("Username")
                        TextField("Jasmine Kpoper", text: $Username)
                            .multilineTextAlignment(.trailing)
                            .accentColor(.yellow)
                            .foregroundColor(Color("DPurple"))
                    }
                    HStack {
                        Text("Bio")
                        TextField("Jasmine Kpoper", text: $Bio)
                            .lineLimit(4)
                            .multilineTextAlignment(.trailing)
                            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .trailing)
                            .foregroundColor(Color("DPurple"))
                    }
                    HStack{
                        Text("Twitter")
                        TextField("Jasmine Kpoper", text: $Twitter)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color("DPurple"))
                        
                    }
                    HStack{
                        Text("Instagram")
                        TextField("Jasmine Kpoper", text: $Instagram)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color("DPurple"))
                        
                    }
                    HStack{
                        Text("Line")
                        TextField("Jasmine Kpoper", text: $Line)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color("DPurple"))
                    }
                    HStack{
                        Text("KakaoTalk")
                        TextField("Jasmine Kpoper", text: $KakaoTalk)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color("DPurple"))
                    }
                    HStack{
                        Text("Telegram")
                        TextField("Jasmine Kpoper", text: $Telegram)
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color("DPurple"))
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Edit profile")
            .navigationBarTitleDisplayMode(.inline)
            //bikin button save
        }
    }
}
struct EditKopCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EditKopCard()
                .previewInterfaceOrientation(.portrait)
            //            ContentView()
        }
    }
}
