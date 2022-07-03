//
//  ContentView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 22/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
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
                    ZStack(alignment: .bottomTrailing){
                        
                    Button(action: {
                        changeProfileImage = true
                        openCameraRoll = true
                            
                        
                    }
                           
                           , label: {
                        if changeProfileImage {
                            Image(uiImage: imageSelected)
                                .profileImageMod()
                        } else {
    //                        Image("profileImage")
                            Image(systemName: "camera.circle.fill")
                                .profileImageMod()
                        }
                    })
                    
                    
                    Image(systemName: "plus")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        
                    
                }.sheet(isPresented: $openCameraRoll) {
                    ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
                }
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
            //            ContentView()
        }
    }
}
