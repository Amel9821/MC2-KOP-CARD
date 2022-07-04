//  DashboardAfterLogin.swift
//  KOP CARD
//
//  Created by Brenda Nathania Passandaran on 01/07/22.
//

import SwiftUI

struct DashboardAfterLogin: View {
    
    @State var showEvent: Bool = false
    @Binding var showDashboardAfterLogin: Bool
    @State var showQRCode: Bool = false
    @State var showQRScan: Bool = false
    @State var showActivity: Bool = false
    @Binding var username: String
    @State var showTopPoints = false
    
    var body: some View {

        VStack{

            HStack{
                Image(systemName: "person")
                                       .resizable()
                                       .frame(width: 30, height: 30)
                                       .padding(.leading,35)
                                      .offset(y: 3)
               
                                                   VStack{
                                                   Text(username)
                                                           .font(.system(size: 20)).bold()
                                                           .offset(x: -10, y:3)
               
                                                   Text("150 Points")
                                                           .font(.system(size: 15))
                                                           .offset(y: 0)
                               }


                Spacer()

                Button {
                    showActivity.toggle()
                } label: {
                    Image(systemName: "person.2.wave.2.fill")
                        .resizable()
                        .frame(width: 40, height: 25)
                        .foregroundColor(WarnaAfter.myColorAfter)
                        .padding(.trailing,30)
                }.padding(.trailing,5).offset(y: 3)


            }.padding(.top, 5)

            ZStack{
            RoundedRectangle(cornerRadius: 10)

                .fill(LinearGradient(gradient: Gradient(colors: [Color("Color1B"), Color("Color2B")]), startPoint: .top, endPoint: .bottom))
                .frame(width: 330, height: 120)
                .padding(.top, 20)
                .offset(y: -20)

               Image("cewek")
                    .resizable()
                    .frame(width: 90, height: 110)
                    .offset(x: -105, y: -5)

                Text("""
                        Scan QR code of your
                        friends at the event!
                        """).offset(x: 50,y: -30)
                    .font(.system(size: 18).bold())
                    
                
                                    .foregroundColor(Color.white)
                
//                Button {
//                    showActivity.toggle()
//                } label: {
//                    Image(systemName: "person.2.wave.2.fill")
//                        .resizable()
//                        .frame(width: 40, height: 25)
//                        .foregroundColor(WarnaAfter.myColorAfter)
//                        .padding(.trailing,30)
//                }
                Button {
                    showQRScan.toggle()
                } label: {
                
                                    HStack{
                                    Image(systemName: "qrcode.viewfinder")
                
                
                                    Text("Scan")
                                    }
                                    .font(.headline)
                                    .foregroundColor(Color("Color1B"))
                                        .frame(width: 85, height: 40)
                                        .background(Color("ColorAbu"))
                                        .cornerRadius(10)
                
                                }.offset( y: 15)
                
                
                                Button {
                                    showQRCode.toggle()
                                } label: {
                
                                    HStack{
                                    Image(systemName: "qrcode.viewfinder")
                
                
                                    Text("Show")
                                    }
                                    .font(.headline)
                                    .foregroundColor(Color("Color1B"))
                                        .frame(width: 85, height: 40)
                                        .background(Color("ColorAbu"))
                                        .cornerRadius(10)
                                    //logo shownya lom diganti
                
                                }.offset(x: 100,y: 15)
                Spacer()
                
            }

            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
                    .frame(width: 330, height: 250)
                   .padding(.top)
                   .offset(x: 0, y: -20)

                Text("Top Points")
                    .font(.system(size: 25)).bold()
//                    .font(.system(size: 25)).bold()
                    .offset(x: -90, y: -100)

                Button{
                    showTopPoints.toggle()
                } label : {
                    Text("See All")
                        .foregroundColor(Color("Color1B"))

                }.offset(x: 110, y: -100)

                Image("chanyeol")
                    .resizable()
                    .frame(width: 47, height: 47)
                    .offset(x: -110, y: -25)
                

                Text("Chacaa")
                    .font(.system(size: 20)).bold()
                    .offset(x: -26, y: -40)

                Text("3000 Points")
                    .font(.system(size: 15))
                    .offset(x: -20, y: -10)

                Image("renjun")
                    .resizable()
                    .frame(width: 47, height: 47)
                    .offset(x: -110, y: 60)
                   // .clipShape(Circle())

                Text("Rerere")
                    .font(.system(size: 20)).bold()
                    .offset(x: -30, y: 53)

                Text("2800 Points")
                    .font(.system(size: 15))
                    .offset(x: -19, y: 80)
                //Spacer()
            }

            ZStack{
            Text("Events")
                .font(.system(size: 25)).bold()
                .offset(x: -210, y: 0)
            
                Button{
                    showEvent.toggle()
                } label: {
                Text("See All")
                    .foregroundColor(Color("Color1B"))}
                    
            }.offset(x: 100,y: -10)
                
            

            ScrollView(.horizontal) {
                HStack(spacing: -20) {
                    ForEach(0..<5) {_ in
                        
                        ZStack{
                        Image("ScrollViewEvents")
                            .resizable()
                            .frame(width: 160, height: 160)
                            .padding(.leading, 26)
                            .offset(y: -10)
                            
                            Text("""
                            NCT 127 Comeback
                                 4 June 2022
                            Coffe Shop Menteng
                            """).offset(x: 15, y: 35)
                                .font(.system(size: 10).bold())
                            Image("NCTback")
                                .resizable()
                                .frame(width: 135, height: 95)
                                .offset(x: 13, y: -30)
                                .padding()
                              
                        }
                    }

                }
            }
//             .background(WarnaAfter.myColor2After)
//            Spacer()
//             .foregroundColor(WarnaAfter.myColor2After)
            
        }
            .sheet(isPresented: $showTopPoints) {
                TopPoints(showTopPoints: $showTopPoints)}
            .sheet(isPresented: $showEvent) {
                EventView (showEvent: $showEvent)}
            .sheet(isPresented: $showActivity) {
                Activity(showActivity: $showActivity)}
            .sheet(isPresented: $showQRScan) {
                QRCodeScanner(showQRScan: $showQRScan)}
            .sheet(isPresented: $showQRCode) {
                QRGeneratorView(showQRCode: $showQRCode, username: $username)}
             .background(WarnaAfter.myColor2After)
          //  Spacer()
            // .foregroundColor(WarnaAfter.myColor2After)
        }
        
        

        
    }
    




//struct AcaraAfter: View{
//    @State var showEvent: Bool = false
//    var body: some View{
//        EventView(showEvent: $showEvent)
//    }
//}
//
//struct AkunAfter: View{
//    @Binding var username: String
//    @State var name: String
//    @State var Bio: String
//    var body: some View{
//        ProfileCard(Bio: Bio, name: $name, username: $username)
//    }
//}
//
//struct DashboardAfter: View{
//    @State var name: String = ""
//    @Binding var username: String
//    @Binding var showDashboardAfterLogin: Bool
//    @Binding var Bio: String
//
//    var body: some View{
//        TabView{
//            DashboardAfterLogin(showDashboardAfterLogin: $showDashboardAfterLogin, username: $username)
//                .tabItem{
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//
//            AcaraAfter()
//            .tabItem{
//                            Image(systemName: "calendar")
//                            Text("Events")
//                        }
//
//            AkunAfter(username: $username, name: name, Bio: Bio)
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//            }
//        }
//    }
//

struct WarnaAfter {
    static let myColorAfter = Color("Color1B")
    static let myColor2After = Color("Color3B")
}


struct DashboardAfterLogin_Previews: PreviewProvider {
//    
    @State static var username: String = ""
    @State static var showDashboardAfterLogin: Bool = false
//    @State static var name: String = ""
//    @State static var Bio: String = ""
        static var previews: some View {
            DashboardAfterLogin(showDashboardAfterLogin: $showDashboardAfterLogin, username: $username)
        }
    }

