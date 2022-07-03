//
//  ContentView.swift
//  kopcard
//
//  Created by Syifa Mashadi on 22/06/22.
//

import SwiftUI

struct EditKopCard: View {
    
    @Binding var EditKopCard: Bool
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
    @Binding var name : String
    @Binding var username: String
    @Binding var Bio : String
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
                            TextField(name, text: $name)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 60)
                        }
                        HStack{
                            Text("Username")
                            TextField(username, text: $username)
                                //.multilineTextAlignment(.trailing)
                                //.accentColor(.yellow)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 25)
                        }
                        HStack {
                            Text("Bio")
                            TextField("", text: $Bio)
                                .lineLimit(4)
                                //.multilineTextAlignment(.trailing)
                                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .trailing)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 80)
                        }
                        HStack{
                            Text("Twitter")
                            TextField("", text: $Twitter)
                              //  .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 50)
                            
                        }
                        HStack{
                            Text("Instagram")
                            TextField("", text: $Instagram)
                             //   .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 30)
                            
                        }
                        HStack{
                            Text("Line")
                            TextField("", text: $Line)
                              //  .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 80)
                        }
                        HStack{
                            Text("KakaoTalk")
                            TextField("", text: $KakaoTalk)
                                //.multilineTextAlignment(.trailing)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 35)
                        }
                        HStack{
                            Text("Telegram")
                            TextField("", text: $Telegram)
                               // .multilineTextAlignment(.trailing)
                                .foregroundColor(Color("DPurple"))
                                .padding(.leading, 40)
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
//struct EditKopCard_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            EditKopCard(EditKopCard: $)
//                .previewInterfaceOrientation(.portrait)
//            //            ContentView()
//        }
//    }
//}
