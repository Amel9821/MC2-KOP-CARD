//
//  ProfileCard.swift
//  kopcard
//
//  Created by Syifa Mashadi on 25/06/22.
//

import SwiftUI

//struct AddIdol {
//    var pict: String
//    var idol: String
//}
//
//private let addIdol = [AddIdol(pict: "", idol: "")]



struct ProfileCard: View {
    
 //   @State var imageSelected = UIImage()
    //var imageSelected = UIImage()
    @State var Bio: String
    @Binding var name: String
    @Binding var username: String
    @State var showidolView: Bool = false
    @State var showExchangePoint: Bool  = false
    @State var showEditKopCard: Bool = false
    @Binding var imageSelected: UIImage
   // @State var poin: Int = 1000
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BGColor")
                    .ignoresSafeArea()
                ScrollView{
                    VStack{
                        ZStack{
                            Button {
                                showEditKopCard.toggle()
                            } label: {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [Color("DPurple"), Color("GPurple")]),
                                                   startPoint: .bottom,
                                                   endPoint: .center))
                                .frame(width: 358, height: 233)}
                            VStack(alignment: .leading){
                                HStack{
                                    Image(uiImage: imageSelected)
                                        //uiImage: imageSelected)
                                    //"ProfileI"
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    Spacer()
                                        .frame(width: 150)
                                    VStack{
                                        Text("KOP Card")
                                            .font(Font.custom("Krungthep", size: 18))
                                            .foregroundColor(.white)
                                    
                                        Text("1,000 Points")
                                            .foregroundColor(.white)
                                        Spacer()
                                            .frame(height: 25)
                                    }
                                }
                                Spacer()
                                    .frame(height: 30)
                                Text(username)
                                    .foregroundColor(.white)
                                    .font(.system(size: 24, weight: .bold, design: .default))
                                Spacer()
                                    .frame(height: 5)
                               Text(Bio)
                                    .foregroundColor(.white)
                                Spacer()
                                    .frame(height: 40)
                            }
                        }
                        ZStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(Color.white)
                                .frame(width: 358, height: 215)
                            VStack(alignment: .leading){
                                Text("Social Media")
                                    .font(.system(size: 25, weight: .bold, design: .default))
                                
                                Button {} label : {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 302, height: 34)
                                        HStack{
                                            Image("twitterBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                }.foregroundColor(.black)
                                
                                Spacer()
                                    .frame(height: 15)
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("kakaoBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                    Spacer()
                                        .frame(width: 21)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("igBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                }
                                Spacer()
                                    .frame(height: 15)
                                HStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("lineBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                    Spacer()
                                        .frame(width: 21)
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
                                            .stroke(.gray, lineWidth: 1)
                                            .frame(width: 141, height: 34)
                                        HStack{
                                            Image("telegramBW")
                                                .resizable()
                                                .frame(width: 21, height: 21)
                                            Text("username")
                                        }
                                    }
                                }
                            }
                        }
//                        ZStack{
//                            RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                .fill(Color.white)
//                                .frame(width: 358, height: 215)
//                            VStack(alignment: .leading){
//                                Text("Social Media")
//                                    .font(.system(size: 25, weight: .bold, design: .default))
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                        .stroke(Color("Ctwitter"), lineWidth: 1)
//                                        .frame(width: 302, height: 34)
//                                    HStack{
//                                        Image("twitter")
//                                            .resizable()
//                                            .frame(width: 21, height: 21)
//                                        Text("username")
//                                    }
//                                }
//                                Spacer()
//                                    .frame(height: 15)
//                                HStack{
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Ckakao"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("kakao")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                    Spacer()
//                                        .frame(width: 21)
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Cig"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("ig")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                }
//                                Spacer()
//                                    .frame(height: 15)
//                                HStack{
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Cline"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("line")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                    Spacer()
//                                        .frame(width: 21)
//                                    ZStack{
//                                        RoundedRectangle(cornerRadius: 25, style: .continuous)
//                                            .stroke(Color("Ctelegram"), lineWidth: 1)
//                                            .frame(width: 141, height: 34)
//                                        HStack{
//                                            Image("telegram")
//                                                .resizable()
//                                                .frame(width: 21, height: 21)
//                                            Text("username")
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                        Spacer()
//                            .frame(height: 20)
                        HStack{
                            Text("Idol")
                                .font(.system(size: 25, weight: .bold, design: .default))
                            Spacer()
                                .frame(width: 280)
                            Button{
                                showidolView.toggle()
                            }
                        label: {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                    .foregroundColor(Color("DPurple"))
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack(spacing: 20){
                                Spacer()
                                ZStack {
                                    Image("bts")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: .gray, radius: 5)
                                    Text("BTS")
                                        .fontWeight(.bold)
                                        .frame(width: 150, height: 75)
                                        .background(.white)
                                        .cornerRadius(10)
                                        .offset(y: 63)
                                }
                                .foregroundColor(.black)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Hi, \(username)!")
            .sheet(isPresented: $showEditKopCard) {
                EditKopCard(EditKopCard: $showEditKopCard, imageSelected: $imageSelected, name: $name, username: $username, Bio: $Bio)}
            .sheet(isPresented: $showExchangePoint) {
                exchangePointView(showExchangePoint: $showExchangePoint)}
            .sheet(isPresented: $showidolView) {
                idolView(showidolView: $showidolView)}
            .toolbar {
                Button{
                    showExchangePoint.toggle()
                } label: {
                    Image("pointPurple")}
                
                
                //                    Custom color and font
                //                    .foregroundColor(Color("color.red"))
                //  .font(.custom("Krungthep", size: 36))
            }
        }
    }
}


//struct ProfileCard_Previews: PreviewProvider {
//    @State static var username: String = ""
//    @State static var name: String = ""
//    @State static var Bio: String = ""
//    @State static var imageSelected = UIImage()
//    static var previews: some View {
//        ProfileCard(imageSelected: imageSelected, Bio: Bio, name: $name, username: $username)
//    }
//}
